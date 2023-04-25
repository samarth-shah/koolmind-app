import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koolmind/controller/login-screen-controller.dart';
import 'package:koolmind/view/home-screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var loginScreenController = Get.put(LoginScreenController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: InkWell(
              onTap: () {
                loginScreenController.emailFocusNode.unfocus();
                loginScreenController.passFocusNode.unfocus();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: loginScreenController.largeSpace,
                  ),
                  Image.asset(loginScreenController.logo),
                  SizedBox(
                    height: loginScreenController.medSpace,
                  ),
                  Text(
                    loginScreenController.heading,
                    style: const TextStyle(
                        fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: loginScreenController.medSpace,
                  ),
                  const Text(
                    "Hello there, login to continue",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: loginScreenController.medSpace,
                  ),
                  TextFormField(
                    focusNode: loginScreenController.emailFocusNode,
                    controller: loginScreenController.email,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                    ),
                  ),
                  SizedBox(
                    height: loginScreenController.medSpace,
                  ),
                  Obx(
                    () => TextFormField(
                      focusNode: loginScreenController.passFocusNode,
                      controller: loginScreenController.password,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            loginScreenController.passwordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            loginScreenController.passwordVisible.value
                                ? loginScreenController.passwordVisible(false)
                                : loginScreenController.passwordVisible(true);
                          },
                        ),
                      ),
                      obscureText: loginScreenController.passwordVisible.value,
                    ),
                  ),
                  SizedBox(
                    height: loginScreenController.smallSpace,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () => Get.off(const HomeScreen()),
                      child: Container(
                        height: loginScreenController.buttonHeight,
                        width: loginScreenController.buttonWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.green,
                        ),
                        child: const Center(
                            child: Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: loginScreenController.largeSpace,
                  ),
                  const Center(
                    child: Text(
                      "Or sign in with",
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: loginScreenController.buttonHeight,
                        width: loginScreenController.buttonWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border:
                              Border.all(color: Colors.grey.shade300, width: 1),
                          color: Colors.white,
                        ),
                        child: const Center(
                            child: Text(
                          'Google',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: loginScreenController.largeSpace,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Create account ",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.arrow_right_alt),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
