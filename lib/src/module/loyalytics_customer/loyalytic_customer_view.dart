import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selfcheckout/src/config/route_config.dart';
import 'package:selfcheckout/src/widgets/my_loader.dart';
import '../../config/theme_settings.dart';
import '../../widgets/custom_phone_search_text_field.dart';
import '../../widgets/custom_search_text_field.dart';
import '../../widgets/keypad_material/pin_keyboard.dart';
import '../../widgets/store_user_widget.dart';
import '../home_med/bloc/med_bloc.dart';
import '../home_med/home_view.dart';

class LoyalyticCustomerView extends StatefulWidget {
  const LoyalyticCustomerView({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(
        builder: (_) => const LoyalyticCustomerView());
  }

  @override
  State<LoyalyticCustomerView> createState() =>
      _LoyalyticCustomerViewScreenState();
}

class _LoyalyticCustomerViewScreenState extends State<LoyalyticCustomerView> {
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
  late TextEditingController loyalyticIdController;
  late TextEditingController countryController;

  @override
  void initState() {
    super.initState();
    phoneController = TextEditingController();
    loyalyticIdController = TextEditingController();
    countryController = TextEditingController();

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
        BlocConsumer<MedBloc, MedState>(
          listenWhen: (previousState, currentState) {
            return (previousState.step != currentState.step) ;
          },
          listener: (context, state) {
            if(state.step == MedListStep.loggedIn){
              setState(() {
                BlocProvider.of<MedBloc>(context)
                    .add(UpdateActionStep(step: MedListStep.initial));
                Navigator.of(context).pushNamed(
                    RouteConfig
                        .loyalyticsCustomerDetailsScreen);
              });
            }
          },
          builder: (context, state) {
            return Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: state.status == MedListStatus.loading ?
                const Center(
                  child: MyLoader(
                    color: AppColor.primary,
                  ),
                ):
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Column(
                    children: [
                      const AppMedLogoPng(),
                      const Text(
                        "Welcome to Loyalytics",
                        style: TextStyle(
                          fontSize: 28.0,
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
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: width,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        const Text(
                                          "Scan your Loyalytic Card",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        CustomSearchTextField(
                                          label: "",
                                          searchButtonColor: AppColor.color3,
                                          hint: "Scan Loyalytic Number",
                                          onSearchPressed: () {
                                            setState(() {
                                              if(loyalyticIdController.text.isNotEmpty){
                                                BlocProvider.of<MedBloc>(context)
                                                    .add(SetLoyalyticCustomer(loyalyticId: loyalyticIdController.text));
                                              }
                                            });
                                          },
                                          controller: loyalyticIdController,
                                          onFieldSubmitted: (val) {
                                            setState(() {
                                              BlocProvider.of<MedBloc>(context)
                                                  .add(SetLoyalyticCustomer(loyalyticId: loyalyticIdController.text));
                                            });
                                          },
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset(
                                            'assets/icons/barcode_scanner.svg',
                                            colorFilter: const ColorFilter.mode(
                                                Color(0xff6f6f6f),
                                                BlendMode.srcIn),
                                            height: 100,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: height / 2,
                                        child: const VerticalDivider(
                                          color: Colors.black,
                                          thickness: 1,
                                          width: 30,
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(
                                          'OR',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height / 2,
                                        child: const VerticalDivider(
                                          color: Colors.black,
                                          thickness: 1,
                                          width: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Enter Mobile Number",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        CustomPhoneSearchTextField(
                                          label: "",
                                          searchButtonColor: AppColor.color3,
                                          controller: phoneController,
                                          countryController: countryController,
                                          hint: "Phone Number",
                                          onFieldSubmitted: (val) {
                                            setState(() {
                                              if(phoneController.text.isNotEmpty){
                                                BlocProvider.of<MedBloc>(context)
                                                    .add(SetLoyalyticCustomer(phoneNo: countryController.text + phoneController.text));
                                                phoneController.clear();
                                              }
                                            });
                                          },
                                          onSearchPressed: () {
                                            setState(() {
                                              if(phoneController.text.isNotEmpty){
                                                BlocProvider.of<MedBloc>(context)
                                                    .add(SetLoyalyticCustomer(phoneNo: countryController.text + phoneController.text));
                                              }
                                            });
                                          },
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Center(
                                          child: PinKeyboard(
                                            length: 3,
                                            enableSearchAction: true,
                                            iconBackspace: const Icon(
                                              Icons.backspace,
                                              size: 28,
                                            ),
                                            iconSearchAction: const Icon(
                                              Icons.search,
                                              size: 32,
                                            ),
                                            iconSearchActionColor:
                                                Colors.blue[400],
                                            onChange: (pin) {
                                              print("${pin}");
                                              setState(() {
                                                phoneController.text = pin;
                                              });
                                            },
                                            onConfirm: (pin) {},
                                            onSearchActionHandler: () {
                                              setState(() {
                                                print("Search using Phone");
                                                BlocProvider.of<MedBloc>(context)
                                                    .add(SetLoyalyticCustomer(phoneNo: countryController.text + phoneController.text));
                                                phoneController.clear();
                                              });

                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
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
            );
          },
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

class KioskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.yellow[700], // Adjust the color to match the kiosk background
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            constraints: const BoxConstraints(
                maxWidth: 600), // Set a max width for the kiosk screen
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Add the Landmark Group logo at the top of the screen
                Image.asset('assets/landmark_group_logo.png', height: 100),
                const SizedBox(height: 20),
                const Text(
                  'Welcome to Shukran',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 40),
                // Input field for Shukran card number
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter Shukran Number',
                    prefixIcon: const Icon(Icons.card_membership),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                // Input field for mobile number
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter Mobile Number',
                    prefixIcon: const Icon(Icons.phone_android),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Background color
                    onPrimary: Colors.white, // Text color
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {
                    // Action when the button is pressed
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                // Additional UI elements as needed...
              ],
            ),
          ),
        ),
      ),
    );
  }
}
