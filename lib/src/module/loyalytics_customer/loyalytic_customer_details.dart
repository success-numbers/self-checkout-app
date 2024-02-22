import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selfcheckout/src/config/route_config.dart';
import 'package:selfcheckout/src/widgets/my_loader.dart';
import '../../config/theme_settings.dart';
import '../../widgets/store_user_widget.dart';
import '../../widgets/widgets.dart';
import '../home_med/bloc/med_bloc.dart';
import '../home_med/home_view.dart';

class LoyalyticCustomerDetailsView extends StatefulWidget {
  const LoyalyticCustomerDetailsView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const LoyalyticCustomerDetailsView());
  }

  @override
  State<LoyalyticCustomerDetailsView> createState() =>
      _LoyalyticCustomerDetailsViewScreenState();
}

class _LoyalyticCustomerDetailsViewScreenState
    extends State<LoyalyticCustomerDetailsView> {
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

class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  _LandingViewState createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  static const List<DashboardButtonData> _buttons = [];
  late TextEditingController phoneController;

  @override
  void initState() {
    super.initState();
    phoneController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    double width = max(350, MediaQuery.of(context).size.width / 2) - 50;
    double height = max(400, MediaQuery.of(context).size.height / 2) - 50;

    return Column(
      children: [
        MedStoreUserWidget(
          onPressed: () => Navigator.maybePop(context),
        ),
        Expanded(
          child: BlocBuilder<MedBloc, MedState>(
            builder: (context, state) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: state.status == MedListStatus.loading
                  ? const Center(
                      child: MyLoader(
                        color: AppColor.color1,
                      ),
                ) : Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        flex: 7,
                        child: Column(
                          children: [
                            // const AppMedLogoPng(),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Welcome ${state.currentCustomer?.name}",
                              style: const TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Wrap(
                                  direction: Axis.vertical,
                                  children: [
                                    MembershipCard(),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    WalletCard(),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    ContactCard()
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
                      const Expanded(
                        flex: 0,
                        child: SizedBox(
                          height: double.maxFinite,
                          width: 1,
                          child: VerticalDivider(
                            width: double.maxFinite,
                            color: Color(0xffBBE2EC),
                            thickness: 2,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 60,),
                                  const Text("This is not my account!",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                  ),),
                                  const SizedBox(height: 10,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: const FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: Row(
                                            children: [
                                              Icon(Icons.arrow_right, size: 35, color: AppColor.color4,),
                                              Text(
                                                "Search by Mobile No",
                                                style: TextStyle(
                                                    color: AppColor.color4,
                                                    fontSize: 14
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          BlocProvider.of<MedBloc>(context)
                                            ..add(SetGuestCustomer())
                                            ..add(EmployeeLoggedEvent(employeeLoggedIn: false))
                                            ..add(UpdateActionStep(step: MedListStep.cart));
                                          Navigator.of(context).pushNamed(RouteConfig.selfCheckoutMed);
                                        },
                                        child: const FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: Row(
                                            children: [
                                              Icon(Icons.arrow_right, size: 35, color: AppColor.color4,),
                                              Text(
                                                "Continue as a guest",
                                                style: TextStyle(
                                                    color: AppColor.color4,
                                                    fontSize: 14
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<MedBloc>(context)
                                        ..add(EmployeeLoggedEvent(employeeLoggedIn: false))
                                        ..add(UpdateActionStep(step: MedListStep.cart));
                                      Navigator.of(context).pushNamed(RouteConfig.selfCheckoutMed);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            8.0), // Adjust the border radius as needed
                                        side: const BorderSide(
                                            color: AppColor.color3
                                        ), // Set the border color
                                      ),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.all(25.0),
                                      child: const FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          'START SHOPPING',
                                          // maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            color: AppColor.textColorSecondary
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
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
  final Widget? icon;
  final GestureTapCallback? onTap;

  const LandingViewButton(
      {Key? key,
      required this.descLabel,
      required this.mainLabel,
      required this.color,
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
          width: 190,
          height: 190,
          padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 26),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'CHECKOUT',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '${mainLabel}',
                    style: const TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                  child: Container(
                width: 180.0,
                height: 180.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white, // Set the border color
                    width: 5.0, // Set the border width
                  ),
                ),
                child: Center(child: icon),
              )),
              const SizedBox(height: 20),
              Text(
                '${descLabel}',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
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

class WalletCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedBloc, MedState>(
  builder: (context, state) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.all(10),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          color: AppColor.color5, // Set the background color
          borderRadius: BorderRadius.circular(5), // Set the border radius
        ),
        child: Container(
          padding: const EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Wallet Balance",
                style: TextStyle(color: AppColor.textColorSecondary),
              ),
              Text(
                "AED ${state.currentCustomer?.walletBalance}",
                style: const TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  },
);
  }
}

class ContactCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedBloc, MedState>(
      builder: (context, state) {
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsets.all(10),
          child: Container(
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColor.color4, // Set the border color
                width: 1.0, // Set the border width
              ),
              borderRadius: BorderRadius.circular(5), // Set the border radius
            ),
            child: Container(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 14),
                    child: Text(
                      "Contact",
                      style: TextStyle(
                        color: AppColor.textColorPrimary,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                      height: 10,
                      color: AppColor.textColorPrimary,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Email"),
                        Text("${state.currentCustomer?.email}"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Number"),
                        Text("${state.currentCustomer?.phoneNo}"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
