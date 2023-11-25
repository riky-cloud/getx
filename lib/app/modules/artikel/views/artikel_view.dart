import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/app/modules/tag/views/tag_view.dart';

import '../controllers/artikel_controller.dart';

class ArtikelView extends GetView<ArtikelController> {
  const ArtikelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ArtikelController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('ArtikelView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Parameter => "+controller.idArtikel),   
            InkWell(
              onTap: () {
                debugPrint("klik dari artikel menuju detail tag");
                Get.to(() => TagView(),
                    arguments: {"alias": "test-alias-11"},
                    transition: Transition.circularReveal,
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
                Get.to(() => TagView(),
                    arguments: {"alias": "test-alias-22"},
                    transition: Transition.circularReveal,
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
                Get.to(() => TagView(),
                    arguments: {"alias": "test-alias-33"},
                    transition: Transition.circularReveal,
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
