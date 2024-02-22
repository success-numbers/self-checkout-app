import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selfcheckout/src/config/route_config.dart';
import '../../config/theme_settings.dart';
import '../../widgets/store_user_widget.dart';
import 'bloc/med_bloc.dart';

typedef _LetIndexPage = void Function(int value);
typedef OnChangeTab = void Function(int index);

class HomeMedScreen extends StatefulWidget {
  const HomeMedScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const HomeMedScreen());
  }

  @override
  State<HomeMedScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeMedScreen> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.background,
        body: LandingView(),
      ),
    );
  }
}

class DashboardButtonData {
  final String label;
  final Color color;
  final Widget? icon;
  final GestureTapCallback? onTap;

  DashboardButtonData(
      {required this.label, required this.color, this.icon, this.onTap});
}

class LandingView extends StatelessWidget {
  final OnChangeTab? onChangeTab;

  const LandingView({Key? key, this.onChangeTab}) : super(key: key);

  static const List<DashboardButtonData> _buttons = [];

  @override
  Widget build(BuildContext context) {
    double width = min(350, MediaQuery.of(context).size.width / 2) - 8;
    double height = min(350, MediaQuery.of(context).size.height / 2) - 8;

    return Column(
      children: [
        const MedStoreUserWidget(onPressed: null,),
        Expanded(
          child: Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Column(
              children: [
                const AppMedLogoPng(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Wrap(
                      children: [
                        Container(
                          height: height,
                          width: width,
                          margin: const EdgeInsets.all(8),
                          child: LandingViewButton(
                            height: height,
                            width: width,
                            descLabel: "Want to become Loyalty member?",
                            mainLabel: "I am a Guest",
                            key: const Key('createNewSaleButton'),
                            color: AppColor.background2,
                            textColor: AppColor.color3,
                            icon: SizedBox(
                              width: width * 0.2,
                              // height: height * 0.08,
                              child: Icon(
                                Icons.person_outlined,
                                size: width * 0.2,
                                color: AppColor.color3, // Set the icon color to match the border color
                              ),
                            ),
                              onTap: () {
                                BlocProvider.of<MedBloc>(context)
                                  ..add(SetGuestCustomer())
                                  ..add(EmployeeLoggedEvent(employeeLoggedIn: false))
                                  ..add(UpdateActionStep(step: MedListStep.cart));
                              Navigator.of(context)
                                  .pushNamed(RouteConfig.selfCheckoutMed);
                            },
                          ),
                        ),
                        Container(
                          height: height,
                          width: width,
                          margin: const EdgeInsets.all(8),
                          child: LandingViewButton(
                            height: height,
                            width: width,
                            descLabel: "View your privileges and checkout",
                            mainLabel: "I am a Loyality Customer",
                            key: const Key('createNewSaleButton'),
                            color: AppColor.color3,
                            textColor: AppColor.background,
                            icon: SizedBox(
                              width: width * 0.2,
                              child: Icon(
                                Icons.perm_contact_cal_sharp,
                                size: width * 0.2,
                                color: AppColor.background, // Set the icon color to match the border color
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).pushNamed(
                                  RouteConfig.loyalyticCustomerScreen);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DashboardButton extends StatelessWidget {
  final String label;
  final Color color;
  final Widget? icon;
  final GestureTapCallback? onTap;

  const DashboardButton(
      {Key? key,
        required this.label,
        required this.color,
        this.icon,
        this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: color)),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null)
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: icon!,
                  ),
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    letterSpacing: 2,
                    fontStyle: FontStyle.italic,
                  ),
                ).tr(),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppMedLogoPng extends StatelessWidget {
  final double height;
  final double width;

  const AppMedLogoPng({Key? key, this.height = 150, this.width = 250})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: height,
          width: width,
          child: Image.asset(
            "assets/logo/nahdi.png",
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}

class LandingViewButton extends StatelessWidget {
  final String descLabel;
  final String mainLabel;
  final Color color;
  final Color textColor;
  final double height;
  final double width;
  final Widget? icon;
  final GestureTapCallback? onTap;

  const LandingViewButton(
      {Key? key,
        required this.descLabel,
        required this.height,
        required this.width,
        required this.mainLabel,
        required this.color,
        required this.textColor,
        this.icon,
        this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: color,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          width: width,
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CHECKOUT',
                    style: TextStyle(
                      fontSize: 12,
                      color: textColor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    mainLabel,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 26,
                      color: textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                  child: Container(
                    width: width / 2.5,
                    height: height / 2.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: textColor, // Set the border color
                        width: 5.0, // Set the border width
                      ),
                    ),
                    child: Center(child: icon),
                  )),
              const SizedBox(height: 20),
              Text(
                descLabel,
                style: TextStyle(
                  fontSize: 12,
                  color: textColor,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}