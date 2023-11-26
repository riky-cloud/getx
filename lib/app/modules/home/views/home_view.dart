import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/app/modules/artikel/views/artikel_view.dart';
import 'package:getx/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                debugPrint("dari home menuju detail artikel");
                Get.toNamed('/artikel/id-artikel-1',
                    arguments: {"idArtikel": "1111", "detail": "news"},
                    preventDuplicates: false);
              },
              child: const Text(
                'link artikel 1',
                style: TextStyle(fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () {
                debugPrint("dari home menuju detail artikel");
                Get.toNamed('/artikel/id-artikel-2',
                    arguments: {"idArtikel": "2222", "detail": "news"},
                    preventDuplicates: false);
              },
              child: const Text(
                'link artikel 2',
                style: TextStyle(fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () {
                debugPrint("dari home menuju detail artikel");
                Get.toNamed('/artikel/id-artikel-3',
                    arguments: {"idArtikel": "3333", "detail": "news"},
                    preventDuplicates: false);
              },
              child: const Text(
                'link artikel 3',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
