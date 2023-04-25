import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreenController extends GetxController {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final passwordVisible = true.obs;

  final heading = "Sign in";
  final logo = "assets/images/home_logo.png";

  final smallSpace = Get.height * 0.1;
  final medSpace = Get.height * 0.02;
  final largeSpace = Get.height * 0.04;
  final buttonWidth = Get.width * 0.9;
  final buttonHeight = Get.height * 0.065;

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passFocusNode = FocusNode();
}
