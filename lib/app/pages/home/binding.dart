import 'package:get/get.dart';
import 'package:poggly_app/app/services/welcome/service.dart';

import 'controller.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
    Get.lazyPut(() => WelcomeService());
  }
}
