import 'package:get/get.dart';
import 'package:poggly_app/app/services/welcome/service.dart';

class HomePageController extends GetxController {
  final WelcomeService welcomeService = Get.find<WelcomeService>();

  @override
  void onInit() {
    super.onInit();
    fetchWelcome();
  }

  Future<void> fetchWelcome() async {
    await welcomeService.fetchWelcome();
  }
}
