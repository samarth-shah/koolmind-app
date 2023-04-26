import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:koolmind/model/login-model.dart';
import 'package:koolmind/view/home-screen.dart';

class LoginScreenController extends GetxController {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  final passwordVisible = true.obs;

  final heading = "Sign in";
  final logo = "assets/images/home_logo.png";
  final url = Uri.parse('http://koolmindapps.com/khomes/api/v1/auth/login');

  final smallSpace = Get.height * 0.1;
  final medSpace = Get.height * 0.02;
  final largeSpace = Get.height * 0.04;
  final buttonWidth = Get.width * 0.9;
  final buttonHeight = Get.height * 0.065;

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passFocusNode = FocusNode();

  RxList<TaskListModel> taskListModel = <TaskListModel>[].obs;

  Future<void> checkUserPass() async {
    http.Response response;

    Map<String, String> payLoad = {};
    payLoad.putIfAbsent('email', () => email.text);
    payLoad.putIfAbsent('password', () => password.text);
    payLoad.putIfAbsent('device', () => "android");
    payLoad.putIfAbsent('device_token', () => "abc123");

    response = await http.post(url, body: payLoad);
    print("response - ${response.body}");
    taskListModel.add(taskListModelFromJson(response.body));
    if (taskListModel.last.statusCode == 200) {
      Get.off(const HomeScreen());
    } else {
      Get.snackbar("Error", taskListModel.last.message!, backgroundColor: Colors.redAccent.shade100);
      email.clear();
      emailFocusNode.unfocus();
      password.clear();
      passFocusNode.unfocus();
    }
  }
}
