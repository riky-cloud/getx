import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArtikelController extends GetxController {
  //TODO: Implement ArtikelController
  String idArtikel = Get.arguments['idArtikel'];
  final id = Get.parameters.obs;

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

  void loadmore(String isi)
  {
    debugPrint(isi);
  }

  @override
  void onClose() {
    super.onClose();
    debugPrint("onClose artikel");

  }

  void increment() => count.value++;
}
