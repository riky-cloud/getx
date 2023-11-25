import 'package:get/get.dart';

import '../modules/artikel/bindings/artikel_binding.dart';
import '../modules/artikel/views/artikel_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/tag/bindings/tag_binding.dart';
import '../modules/tag/views/tag_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ARTIKEL,
      page: () => const ArtikelView(),
      binding: ArtikelBinding(),
    ),
    GetPage(
      name: _Paths.TAG,
      page: () => const TagView(),
      binding: TagBinding(),
    ),
  ];
}
