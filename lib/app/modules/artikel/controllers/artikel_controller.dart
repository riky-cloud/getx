import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArtikelController extends GetxController {
  //TODO: Implement ArtikelController
  String idArtikel = Get.arguments['idArtikel'];

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    debugPrint("onInit artikel");

  }

  @override
  void onReady() {
    super.onReady();
    debugPrint("onReady artikel");
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint("onClose artikel");

  }

  void increment() => count.value++;
}
