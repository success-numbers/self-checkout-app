import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selfcheckout/src/module/self_checkout_med/self_checkout_screen.dart';

import '../module/home_med/bloc/med_bloc.dart';
import 'widgets.dart';
import 'package:flutter/material.dart';

import '../config/theme_settings.dart';

class MedStoreUserWidget extends StatelessWidget {
  final void Function()? onPressed;
  const MedStoreUserWidget({
    required this.onPressed,
    super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Scaffold(
        backgroundColor: AppColor.background2,
        body: BlocBuilder<MedBloc, MedState>(
          builder: (context, state){
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: onPressed,
                  icon: const Icon(Icons.arrow_back_rounded, color: AppColor.color3),
                ),
                const SizedBox(
                    // width: 300,
                    child: Text("Nahdi Medical Store", style: TextStyle(color: AppColor.textColorPrimary, fontWeight: FontWeight.bold, fontSize: 18), textAlign: TextAlign.center,)
                ),
                Container(
                  child: Row(
                    children: [
                      state.employeeLoggedIn
                          ? IconButton(
                              onPressed: () => BlocProvider.of<MedBloc>(context).add(EmployeeLoggedEvent(employeeLoggedIn: false)),
                              icon: const Icon(Icons.logout_rounded, color: AppColor.color3,)
                          )
                          : IconButton(
                              onPressed: (){
                                showDialog(
                                    context: context,
                                    builder: (ctx) {
                                      return const EmployeeLoginScreen();
                                    }
                                );
                              },
                              icon: const Icon(Icons.login_rounded, color: AppColor.color3,)
                          ),
                      CustomButton(
                          borderRadius: 5,
                          padding: 2,
                          text: "Call for Assistance",
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          textColor: AppColor.textColorPrimary,
                          buttonColor: AppColor.color1,
                          onPressed: (){
                            showDialog(
                                context: context,
                                barrierDismissible: false,
                                builder: (ctx) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    backgroundColor: AppColor.background,
                                    content: const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Hi There!\nAn employee will soon be there to aid your needs.",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: AppColor.color4,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        child: const Text(
                                          "Ok",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: AppColor.color4,
                                              fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        onPressed: () => Navigator.of(context).pop(),
                                      )
                                    ],
                                  );
                                }
                            );
                          }
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class EmployeeLoginScreen extends StatefulWidget {
  const EmployeeLoginScreen({super.key});

  @override
  _EmployeeLoginScreenState createState() => _EmployeeLoginScreenState();
}

class _EmployeeLoginScreenState extends State<EmployeeLoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isLoginButtonEnabled = false;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    _usernameController.addListener(validateInputs);
    _passwordController.addListener(validateInputs);
  }

  void validateInputs() {
    setState(() {
      isLoginButtonEnabled =
          _usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty;
      errorMessage = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedBloc, MedState>(
      builder: (context, state){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          backgroundColor: AppColor.background2,
          content: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IntrinsicHeight(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Employee Sign-In",
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColor.textColorPrimary,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 20,),
                        TextField(
                          controller: _usernameController,
                          decoration: const InputDecoration(
                            labelText: 'Username',
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          errorMessage,
                          style: const TextStyle(
                            fontSize: 15,
                            color: AppColor.color6,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.color3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0), // Adjust border radius as needed
                                ),
                              ),
                              onPressed: isLoginButtonEnabled
                                  ? () {
                                    String username = _usernameController.text;
                                    String password = _passwordController.text;
                                    if (username == "1111" && password == "1111") {
                                      BlocProvider.of<MedBloc>(context).add(EmployeeLoggedEvent(employeeLoggedIn: true));
                                      Navigator.of(context).pop();
                                      print('Login successful');
                                    } else {
                                      setState(() {
                                        errorMessage = 'Wrong username or password';
                                      });
                                    }
                                  }
                                  : null,
                              child: const Text('Log In'),
                            ),
                            const SizedBox(width: 20,),
                            Visibility(
                                visible: false,
                                child: ElevatedButton(
                                  onPressed: () {
                                    BlocProvider.of<MedBloc>(context).add(
                                        EmployeeLoggedEvent(
                                            employeeLoggedIn: false));
                                    Navigator.of(context).pop();
                                    print('Logout button pressed');
                                  },
                                  child: const Text('Log Out'),
                                )
                            ),
                          ],
                        ),
                      ]
                  )
              )
          ),
        );
      }
    );
  }
}