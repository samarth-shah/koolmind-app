import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final eSmallSpace = Get.height * 0.05;
  final smallSpace = Get.height * 0.1;
  final medSpace = Get.height * 0.02;
  final largeSpace = Get.height * 0.04;

  final boxHeight = Get.height * 0.4;
  final boxWidth = Get.height * 0.4;

  final selectedIndex = 0.obs;

  void onItemTapped(int index) {
    selectedIndex(index);
    print(index);
  }
}
