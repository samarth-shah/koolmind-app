import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/home-screen-controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeScreenController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.verified_outlined),
              label: 'Offers',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined),
              label: 'More',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.selectedIndex.value,
          selectedItemColor: Colors.green.shade900,
          unselectedItemColor: Colors.grey,
          iconSize: 40,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          onTap: (index) => controller.onItemTapped(index),
          elevation: 1,
        ),
      ),
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
                      height: Get.height * 0.035,
                      child: Badge(
                        largeSize: 15,
                        backgroundColor: Colors.black,
                        label: const Text(
                          "1",
                          style: TextStyle(color: Colors.white),
                        ),
                        child: Image.asset(
                          "assets/images/notification.png",
                          fit: BoxFit.fitHeight,
                        ),
                      )),
                ],
              ),
              cView(),
              homeScreenBox(context, controller, Colors.green.shade200,
                  Colors.orange.shade200, "hand_home", "brick_wall"),
              SizedBox(height: controller.medSpace),
              homeScreenBox(context, controller, Colors.blue, Colors.teal,
                  "handshake", "settings"),
            ],
          ),
        ),
      ),
    );
  }
}

Widget homeScreenBox(BuildContext context, controller, Color rBoxColor,
    Color lBoxColor, String rImag, String lImag) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: Get.width * 0.42,
        height: Get.height * 0.17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: lBoxColor,
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: controller.eSmallSpace,
              child: Image.asset(
                "assets/images/$lImag.png",
                height: controller.eSmallSpace,
                fit: BoxFit.fitHeight,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Build",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                "Lorem ipsum dolor sit\namet consectetur",
                softWrap: true,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Container(
        width: Get.width * 0.42,
        height: Get.height * 0.17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: rBoxColor,
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: controller.eSmallSpace,
              child: Image.asset(
                "assets/images/$rImag.png",
                height: controller.eSmallSpace,
                fit: BoxFit.fitHeight,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Build",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4),
              child: Text(
                "Lorem ipsum dolor sit\namet consectetur",
                softWrap: true,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget cView() {
  return SizedBox(
    width: Get.width * 0.91,
    height: Get.height * 0.3,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          padding: const EdgeInsets.only(left: 3),
          width: Get.width * 0.9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: Get.width * 0.92,
              image: const AssetImage("assets/images/for_sale_house.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
        );
      },
    ),
  );
}
