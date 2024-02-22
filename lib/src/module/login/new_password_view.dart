import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/theme_settings.dart';
import '../../widgets/app_logo.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/my_loader.dart';
import 'bloc/login_bloc.dart';
import 'login_design.dart';
import 'phone_email_widget.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const NewPasswordView());
  }

  // Widget _buildWidget() {
  //
  // }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
      width = min(MediaQuery.of(context).size.width, 600);
      height = min(MediaQuery.of(context).size.height, 600);
    }

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset(
                    "assets/logo/logo_revert.svg",
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.black.withOpacity(0.05),
                  ),
                ),
              ),
              if (Platform.isIOS || Platform.isAndroid)
                const Positioned(
                  child: NewPasswordForm(),
                ),
              if (Platform.isMacOS || Platform.isWindows || Platform.isLinux)
                Positioned(
                  child: Align(
                    child: SizedBox(
                      height: height,
                      width: width,
                      child: const NewPasswordForm(),
                    ),
                  ),
                ),
              // Positioned(
              //   top: 20,
              //   left: 16,
              //   child: AppBarLeading(
              //     icon: Icons.arrow_back,
              //     onTap: () {
              //       Navigator.of(context).pop();
              //     },
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class NewPasswordForm extends StatelessWidget with LoginThemeConfig {
  const NewPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      elevation: elevation,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 25),
              child: AppLogo(),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: const Text(
                'Enter your password.',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
              ).tr(),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: PasswordAndReEnterPasswordForm(),
            ),
            BlocBuilder<LoginBloc, LoginState>(
              builder: (context, state) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 200),
                    child: state.status == LoginStatus.loadingLogin
                        ? const Center(
                            child: MyLoader(
                              color: AppColor.primary,
                            ),
                          )
                        : Row(children: [
                            Expanded(
                              child: AcceptButton(
                                label: "Update Password",
                                onPressed: state.newPassword.isNotEmpty ? () {
                                  context.read<LoginBloc>().add(OnNewPasswordAnswer(state.newPassword));
                                } : null,
                              ),
                            )
                          ]),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "termsOfService",
                    style: TextStyle(
                        height: 1.3, wordSpacing: 1.3, color: AppColor.color5),
                  ).tr()),
            ),
            Center(
              heightFactor: 1.8,
              child: SvgPicture.asset(
                "assets/image/undraw_authentication_re_svpt.svg",
                alignment: Alignment.center,
                height: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PasswordAndReEnterPasswordForm extends StatefulWidget {
  const PasswordAndReEnterPasswordForm({Key? key}) : super(key: key);

  @override
  State<PasswordAndReEnterPasswordForm> createState() =>
      _PasswordAndReEnterPasswordFormState();
}

class _PasswordAndReEnterPasswordFormState
    extends State<PasswordAndReEnterPasswordForm> {
  late TextEditingController _passwordController;
  late TextEditingController _reEnterPasswordController;
  late String error = '';

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _reEnterPasswordController = TextEditingController();
    _passwordController.addListener(() {
      setState(() {});
      submitData();
    });
    _reEnterPasswordController.addListener(() {
      setState(() {});
      submitData();
    });
  }

  bool get _valid {
    return _passwordController.text.isNotEmpty &&
        _reEnterPasswordController.text.isNotEmpty &&
        _passwordController.text == _reEnterPasswordController.text;
  }

  submitData() {
    if (_valid) {
        context.read<LoginBloc>().add(
              OnNewPasswordChange(_reEnterPasswordController.text),
            );
    }
  }

  @override
  dispose() {
    _passwordController.dispose();
    _reEnterPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _passwordController,
          obscureText: true,
          decoration: InputDecoration(
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            filled: true,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(color: AppColor.primary, width: 1.6),
            ),
            fillColor: AppColor.primary.withOpacity(0.1),
            hintText: "Enter password",
            hintStyle: const TextStyle(color: AppColor.subtitleColorPrimary),
            prefixStyle: const TextStyle(color: Colors.black, fontSize: 16),
          ),
          onChanged: (value) {
            // context.read<LoginBloc>().add(
            //   OnPasswordChange(value),
            // );
          },
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          controller: _reEnterPasswordController,
          obscureText: false,
          decoration: InputDecoration(
            isDense: true,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
            filled: true,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(color: AppColor.primary, width: 1.6),
            ),
            fillColor: AppColor.primary.withOpacity(0.1),
            hintText: "Re-Enter password",
            hintStyle: const TextStyle(color: AppColor.subtitleColorPrimary),
            prefixStyle: const TextStyle(color: Colors.black, fontSize: 16),
          ),
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 15,
        ),
        if (_passwordController.text != _reEnterPasswordController.text)
          const Padding(
            padding: EdgeInsets.only(top: 2.0),
            child: Text(
              'Passwords do not match',
              style: TextStyle(color: Colors.red),
            ),
          ),
      ],
    );
  }
}
