import 'dart:convert';
import 'dart:io';

import 'package:encrypt/encrypt.dart';
import 'package:flutter/foundation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'src/config/theme_settings.dart';
import 'src/module/translation/http_asset_loader.dart';
import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:printing/printing.dart';
import 'repo_providers.dart';
import 'src/config/constants.dart';
import 'src/database/db_provider.dart';
import 'src/module/translation/multi_localization.dart';
import 'src/util/cache/custom_storage.dart';
import 'src/util/helper/rest_api.dart';

import 'bloc_observer.dart';
import 'log.dart';
import 'src/util/cache/custom_pdf_cache.dart';
import 'src/widgets/custom_button.dart';
import 'src/widgets/custom_text_field.dart';
import 'package:encrypt/encrypt.dart' as ec;

final log = Logger('Main');

Future<void> main() async {
  Bloc.observer = InvoicingBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isAndroid) {
    await Firebase.initializeApp();
  }
  initRootLogger();
  await EasyLocalization.ensureInitialized();
  await DatabaseProvider.ensureInitialized();
  PdfBaseCache.defaultCache = CustomPdfCache();

  // Database Configuration
  await Constants.getImageBasePath();

  var customStorage = CustomStorage();
  await customStorage.init();

  // 'ap-south-1_gXgaeT7lu',
  // '366tbopn6vh1f3v88e4u2drne2',

  // 'ap-south-1_6L70C39jY',
  // '2oabjq1j5kh9nqgd5hd7qs3cbi',
  // final userPool = CognitoUserPool(
  //   const String.fromEnvironment("COGNITO_USER_POOL_ID"),
  //   const String.fromEnvironment("COGNITO_CLIENT_ID"),
  //   storage: customStorage,
  // );

  // final restClient = RestApiClient(
  //     userPool: userPool,
  //     baseUrl: const String.fromEnvironment("REST_API_CLIENT"));

  runApp(SnumPosConfigLoader(
    storage: customStorage,
  ));
}

class SnumPosConfigLoader extends StatefulWidget {
  final CustomStorage storage;
  const SnumPosConfigLoader({super.key, required this.storage});

  @override
  State<SnumPosConfigLoader> createState() => _SnumPosConfigLoaderState();
}

class _SnumPosConfigLoaderState extends State<SnumPosConfigLoader> {
  bool _isConfigLoaded = false;
  bool _loadingConfig = false;
  bool _lock = false;

  CognitoUserPool? userPool;
  RestApiClient? restClient;

  @override
  void initState() {
    super.initState();
    loadConfig();
  }

  Map<String, dynamic> parseData(String jsonString) {
    Map<String, dynamic> data = json.decode(jsonString);
    return data;
  }

  void loadConfig() async {
    setState(() {
      _loadingConfig = true;
    });
    var data = await widget.storage.getItem("SNPOS_CONFIG");
    if (data != null && data.isNotEmpty) {
      try {

        final key = ec.Key.fromUtf8('pkqmuynchgpovpnuugaljfwuaapprqqe');
        final iv = ec.IV.fromUtf8("Snumbers@2023");
        final encrypter = Encrypter(AES(key,),);

        // base64 to bytes
        final encryptedBytes = Encrypted.fromBase64(data);

        final decrypted = encrypter.decrypt(encryptedBytes, iv: iv);

        Map<String, dynamic> config = parseData(decrypted);
        var COGNITO_USER_POOL_ID = config["COGNITO_USER_POOL_ID"];
        var COGNITO_CLIENT_ID = config["COGNITO_CLIENT_ID"];
        String REST_API_CLIENT = config["REST_API_CLIENT"];
        var TRANSLATION = config["TRANSLATION"];
        var IMAGE_KIT_PUBLIC_KEY = config["IMAGE_KIT_PUBLIC_KEY"];
        print("MEOW 1 ${config.toString()}");

        Constants.translationUrl = TRANSLATION;
        Constants.restApiBaseUrl = REST_API_CLIENT;
        Constants.imageKitPublicKey = IMAGE_KIT_PUBLIC_KEY;

        userPool = CognitoUserPool(
          COGNITO_USER_POOL_ID,
          COGNITO_CLIENT_ID,
          storage: widget.storage,
        );

        restClient = RestApiClient(
          userPool: userPool!,
          baseUrl: REST_API_CLIENT,
        );
        setState(() {
          _isConfigLoaded = true;
          _loadingConfig = false;
        });
      } catch (e) {
        log.severe("Error while loading config", e);
        setState(() {
          _isConfigLoaded = false;
          _loadingConfig = false;
        });
      }
    } else {
      setState(() {
        _isConfigLoaded = false;
        _loadingConfig = false;
      });
    }
  }

  void saveConfig(String config) async {
    if (_lock) {
      return;
    }
    _lock = true;
    await widget.storage.setItem("SNPOS_CONFIG", config);
    _lock = false;
    loadConfig();
  }

  @override
  Widget build(BuildContext context) {
    return !_isConfigLoaded
        ? MaterialApp(
            home: Stack(
              children: [
                ConfigLoaderScreen(
                    onConfigLoaded: loadConfig, saveConfig: saveConfig),
                if (_loadingConfig)
                  Positioned.fill(
                    child: Opacity(
                      opacity: 0.5,
                      child: Container(
                        color: Colors.black26,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          )
        : MultiLocalization(
            locales: const [
              Locale('en', 'US'),
              // Locale('hi', 'IN'),
              // Locale('de', 'DE'),
              Locale('ar', 'AE'),
            ],
            path: 'assets/translations',
            assetLoader: HttpAssetLoader(),
            child: EasyLocalization(
              path: 'assets/translations',
              supportedLocales: const [
                Locale('en', 'US'),
                // Locale('hi', 'IN'),
                // Locale('de', 'DE'),
                Locale('ar', 'AE'),
              ],
              fallbackLocale: const Locale('en', 'US'),
              assetLoader: HttpAssetLoader(),
              // useFallbackTranslations: true,
              child: MyAppRepoProviders(
                userPool: userPool!,
                restClient: restClient!,
              ),
            ),
          );
  }
}

class ConfigLoaderScreen extends StatefulWidget {
  final Function() onConfigLoaded;
  final Function(String) saveConfig;

  const ConfigLoaderScreen(
      {super.key, required this.onConfigLoaded, required this.saveConfig});

  @override
  State<ConfigLoaderScreen> createState() => _ConfigLoaderScreenState();
}

class _ConfigLoaderScreenState extends State<ConfigLoaderScreen> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool lock = false;

  late TextEditingController _controller;

  @override
  void reassemble() {
    super.reassemble();
    if (controller != null) {
      if (Platform.isAndroid) {
        controller!.pauseCamera();
      }
      controller!.resumeCamera();
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Scan QR Code"),
            backgroundColor: AppColor.primary),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(flex: 4, child: _buildQrView(context)),
              CustomTextField(
                label: "Enter Config Token",
                controller: _controller,
              ),
              Row(
                children: [
                  Expanded(
                      child: AcceptButton(
                          onPressed: _controller.text.isNotEmpty
                              ? () {
                                  widget.saveConfig(_controller.text);
                                }
                              : null,
                          label: 'Save Config')),
                ],
              )
            ],
          ),
        ));
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller

    if (!(Platform.isAndroid || Platform.isIOS)) {
      return Container();
    }

    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      widget.saveConfig(scanData.code!);
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }
}
