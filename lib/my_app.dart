import 'package:selfcheckout/src/module/home_med/bloc/med_bloc.dart';
import 'package:selfcheckout/src/module/home_med/home_view.dart';
import 'package:selfcheckout/src/module/landing/landing_screen.dart';
import 'package:selfcheckout/src/module/loading_payment/bloc/loading_progress_bloc.dart';

import 'src/config/visibility_config.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'src/config/cache_manager.dart';

import 'src/config/route_config.dart';
import 'src/module/authentication/bloc/authentication_bloc.dart';

import 'src/module/business/business_view.dart';

import 'src/module/login/bloc/login_bloc.dart';
import 'src/module/login/login_view.dart';
import 'src/module/login/new_password_view.dart';
import 'src/module/login/verify_user_device_view.dart';
import 'src/module/login/verify_user_view.dart';
import 'src/widgets/my_loader.dart';
import 'src/config/theme_settings.dart';
import 'src/module/error/bloc/error_notification_bloc.dart';
import 'src/module/error/error_notification.dart';
import 'src/module/login/choose_create_business_view.dart';
import 'src/repositories/checklist_helper.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => CheckListHelper()),
      ],
      child: MultiBlocProvider(
        providers: [

          BlocProvider(
            lazy: false,
            create: (context) => ErrorNotificationBloc(
              checkListHelper: RepositoryProvider.of(context),
            ),
          ),
          BlocProvider(
            lazy: false,
            create: (context) => MedBloc(
              medRepository: RepositoryProvider.of(context),
              errorNotificationBloc: BlocProvider.of(context),
            ),
          ),
          BlocProvider(
            create: (context) => AuthenticationBloc(
                userPool: RepositoryProvider.of(context),
                employeeRepository: RepositoryProvider.of(context),
                businessRepository: RepositoryProvider.of(context),
                errorNotificationBloc: BlocProvider.of(context))
              ..add(
                InitialAuthEvent(),
              ),
          ),
          BlocProvider(
            create: (context) => LoginBloc(
              userPool: RepositoryProvider.of(context),
              authenticationBloc: BlocProvider.of(context),
              errorNotificationBloc: BlocProvider.of(context),
            )..add(OnCountryChange(SettingsCacheManager()
                .getDefaultElement(SettingsType.country))),
          ),
          // BlocProvider(
          //   create: (context) => EmployeeClockingBloc(
          //       authenticationBloc: BlocProvider.of(context)),
          // ),
          // BlocProvider(
          //   create: (context) => InAppNotificationBloc(),
          // ),
          BlocProvider(
            create: (context) => LoadingProgressBloc(),
          )
        ],
        child: const MyAppView(),
      ),
    );
  }
}

class MyAppView extends StatefulWidget {
  const MyAppView({Key? key}) : super(key: key);

  @override
  State<MyAppView> createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: _navigatorKey,
      theme: ThemeData.light().copyWith(
        primaryColor: AppColor.primary,
        brightness: Brightness.light,
        backgroundColor: AppColor.background,
        dividerColor: Colors.white54,
        colorScheme: const ColorScheme.light(primary: AppColor.primary),
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: (context, child) {
        return ErrorNotification(
          child: BlocListener<AuthenticationBloc, AuthenticationState>(
            listenWhen: (previous, current) {
              return true;
            },
            listener: (context, state) async {
              switch (state.status) {
                // case AuthenticationStatus.clockOutRecommended:
                //   BlocProvider.of<InAppNotificationBloc>(context).add(
                //       InAppNotificationAdd(
                //           notification: InAppNotification(
                //               message: "_clockOutNotice",
                //               type: InAppNotificationTypes.warning)));
                //   break;
                // case AuthenticationStatus.clockInFailed:
                //   BlocProvider.of<InAppNotificationBloc>(context).add(
                //       InAppNotificationAdd(
                //           notification: InAppNotification(
                //               message: "_failedMessage",
                //               type: InAppNotificationTypes.severe)));
                //   break;
                case AuthenticationStatus.authenticated:
                  _navigator.pushAndRemoveUntil<void>(
                    HomeMedScreen.route(),
                        (route) => false,
                  );
                  break;
                case AuthenticationStatus.unauthenticated:
                  _navigator.pushAndRemoveUntil<void>(
                    LoginView.route(),
                    (route) => false,
                  );
                  break;
                case AuthenticationStatus.unknown:
                  _navigator.pushAndRemoveUntil<void>(
                    LandingScreen.route(),
                    (route) => false,
                  );
                  break;
                case AuthenticationStatus.verifyUser:
                  _navigator.push(VerifyUserView.route());
                  break;
                case AuthenticationStatus.newUser:
                  _navigator.push<void>(
                    BusinessView.route(),
                  );
                  break;
                case AuthenticationStatus.verifyUserDevice:
                  _navigator.push(VerifyUserDeviceView.route());
                  break;
                case AuthenticationStatus.chooseBusiness:
                  _navigator.pushReplacement(ChooseCreateBusinessView.route());
                  break;
                // case AuthenticationStatus.clockInRequired:
                //   _navigator.push(ClockInOutView.route());
                //   break;
                case AuthenticationStatus.newPassword:
                  _navigator.push(NewPasswordView.route());
                  break;
                case AuthenticationStatus.chooseBusinessLoading:
                  _navigator.push(
                    DialogRoute<void>(
                      context: context,
                      builder: (context) => const Center(
                        child: MyLoader(),
                      ),
                    ),
                  );
                case AuthenticationStatus.clockInChecking:
                  _navigator.push(
                    DialogRoute<void>(
                      context: context,
                      builder: (context) => const Center(
                        child: MyLoader(),
                      ),
                    ),
                  );
                  break;
                default:
                  break;
              }
            },
            child: "PROD" != const String.fromEnvironment("BUILD_TYPE").toUpperCase() ? Banner(
              location: BannerLocation.topEnd,
              message: const String.fromEnvironment("BUILD_TYPE"),
              color: const Color(int.fromEnvironment("LABEL_COLOR")),
              child: Stack(children: [
                child ?? const SizedBox(),
                // Positioned(bottom: 100, right: -15, child: NotificationView()),
              ]),
            ) : Stack(children: [
              child ?? const SizedBox(),
              // Positioned(bottom: 100, right: -15, child: NotificationView()),
            ]),
          ),
        );
      },
      onGenerateRoute: RouteConfig.onGenerateRoute,
    );
  }
}
