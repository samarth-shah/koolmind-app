import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home-screen-controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeScreenController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: Get.height * 0.12,
                    child: Image.asset(
                      "assets/images/Koehpa_Logo.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                    child: Image.asset(
                      "assets/images/notification.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              // SizedBox(height: controller.smallSpace),
              cView(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget cView() {
  return SizedBox(
    width: Get.width*0.91,
    height: Get.height*0.3,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: Get.width * 0.9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: Get.width * 0.95,
              image: const AssetImage("assets/images/for_sale_house.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
        );
      },
    ),
  );
}
