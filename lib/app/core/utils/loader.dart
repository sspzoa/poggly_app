import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:poggly_app/app/provider/api.dart';
import 'package:poggly_app/app/provider/api_interface.dart';
import 'package:url_strategy/url_strategy.dart';

class AppLoader {
  Future<void> load() async {
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    setPathUrlStrategy();

    Get.put<ApiProvider>(DevApiProvider());

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    if (!kIsWeb) {
      if (Platform.isAndroid) {
        await FlutterDisplayMode.setHighRefreshRate();
      }
    }

    FlutterNativeSplash.remove();
  }
}
