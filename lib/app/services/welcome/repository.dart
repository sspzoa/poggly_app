import 'package:get/get.dart';
import 'package:poggly_app/app/provider/api_interface.dart';
import 'package:poggly_app/app/provider/model/response.dart';

import 'model.dart';

class WelcomeRepository {
  final ApiProvider api;

  WelcomeRepository({ApiProvider? api}) : api = api ?? Get.find<ApiProvider>();

  Future<Welcome> getWelcome() async {
    String url = '/welcome';

    PGHttpResponse response = await api.get(url);

    Welcome welcome = Welcome.fromJson(response.data);

    return welcome;
  }
}
