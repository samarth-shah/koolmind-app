import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koolmind/controller/splash-screen-controller.dart';
import 'package:koolmind/view/login-screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var splashScreenController = Get.put(SplashScreenController());

    //change time to 3 seconds
    Timer(const Duration(seconds: 0), () => Get.off(const LoginScreen()));

    return Container(
      color: splashScreenController.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(splashScreenController.logo),
          SizedBox(
            height: splashScreenController.space,
          ),
          Image.asset(splashScreenController.bgImage),
        ],
      ),
    );
  }
}
