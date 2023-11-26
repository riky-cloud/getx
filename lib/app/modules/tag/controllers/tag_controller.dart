import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TagController extends GetxController {
  //TODO: Implement TagController
  String alias = Get.parameters['alias'].toString();
  // String alias = Get.arguments['alias'];


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    debugPrint("onInit Tag");
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint("onReady Tag");
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint("onClose Tag");
  }

  void increment() => count.value++;
}
