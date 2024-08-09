import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:poggly_app/app/pages/home/binding.dart';
import 'package:poggly_app/app/pages/home/page.dart';
import 'package:poggly_app/app/pages/test/binding.dart';
import 'package:poggly_app/app/pages/test/page.dart';
import 'package:poggly_app/app/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.TEST,
      page: () => const TestPage(),
      binding: TestPageBinding(),
    ),
    GetPage(
      name: Routes.LICENSE,
      page: () => const LicensePage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomePageBinding(),
    ),
  ];
}
