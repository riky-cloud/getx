import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/app/modules/tag/views/tag_view.dart';
import 'package:getx/app/routes/app_pages.dart';

import '../controllers/artikel_controller.dart';

class ArtikelView extends GetView<ArtikelController> {
  const ArtikelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => ArtikelController());
    controller.loadmore(Get.parameters['id'].toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArtikelView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // Obx(() =>  Text("Parameter => "+controller.id.toString())
            // ),

            Text("Parameter => " + Get.parameters['id'].toString()),
            InkWell(
              onTap: () {
                debugPrint("klik dari artikel menuju detail tag");
                Get.toNamed('/tag/test-alias-par-1',
                    arguments: {"alias": "test-alias-11"},
                    preventDuplicates: false);
              },
              child: const Text(
                'link TAG 1',
                style: TextStyle(fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () {
                debugPrint("klik dari artikel menuju detail tag");
                Get.toNamed('/tag/test-alias-par-2',
                    arguments: {"alias": "test-alias-22"},
                    preventDuplicates: false);
              },
              child: const Text(
                'link TAG 2',
                style: TextStyle(fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () {
                debugPrint("klik dari artikel menuju detail tag");
                Get.toNamed('/tag/test-alias-par-3',
                    arguments: {"alias--": "test-alias-33"},
                    preventDuplicates: false);
              },
              child: const Text(
                'link TAG 3',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
