import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/theme_settings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.formInputBorder,
      child: Scaffold(
        extendBody: true,
        backgroundColor: AppColor.formInputBorder,
        body: SafeArea(
          bottom:false,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 350,
                child: Image.asset(
                  "assets/logo/nahdi.png",
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.center,
                ),
              ),

              Expanded(child: Container()),
              const Text(
                "POS",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 10,
                    color: AppColor.textColorSecondary),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
