import 'dart:developer';

import 'package:get/get.dart';

import 'model.dart';
import 'repository.dart';

class WelcomeService extends GetxController with StateMixin<Welcome?> {
  final WelcomeRepository repository;

  WelcomeService({WelcomeRepository? repository})
      : repository = repository ?? WelcomeRepository();

  final Rx<Welcome?> _welcome = Rx(null);

  Welcome? get welcome => _welcome.value;

  Future<Welcome?> fetchWelcome() async {
    try {
      Welcome data = await repository.getWelcome();
      _welcome.value = data;
      return _welcome.value;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
