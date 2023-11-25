import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/app/modules/artikel/views/artikel_view.dart';
import 'package:getx/app/routes/app_pages.dart';

import '../controllers/tag_controller.dart';

class TagView extends GetView<TagController> {
  const TagView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => TagController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('TagView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Parameter => "+controller.alias),
            InkWell(
              onTap: () {
                debugPrint("dari home menuju detail artikel");
                Get.toNamed(Routes.ARTIKEL,
                    arguments: {"idArtikel": "4444", "detail": "news"},
                    preventDuplicates: false);
              },
              child: Text(
                'link artikel 4 ',
                style: TextStyle(fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () {
                debugPrint("dari home menuju detail artikel");
                Get.toNamed(Routes.ARTIKEL,
                    arguments: {"idArtikel": "5555", "detail": "news"},
                    preventDuplicates: false);
              },
              child: Text(
                'link artikel 5 ',
                style: TextStyle(fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () {
                debugPrint("dari home menuju detail artikel");
                Get.toNamed(Routes.ARTIKEL,
                    arguments: {"idArtikel": "6666", "detail": "news"},
                    preventDuplicates: false);
              },
              child: Text(
                'link artikel 6 ',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
