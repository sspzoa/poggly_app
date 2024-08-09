import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poggly_app/app/core/theme/poggly_colors.dart';
import 'package:poggly_app/app/core/theme/poggly_typography.dart';

import 'controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).extension<PogglyColors>()!;
    final textTheme = Theme.of(context).extension<PogglyTypography>()!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Obx(
        () {
          final welcome = controller.welcomeService.welcome;
          if (welcome == null) {
            return Center(
                child: CircularProgressIndicator(
              color: colorTheme.primaryBrand,
            ));
          }
          return Center(
            child: Text(welcome.message),
          );
        },
      ),
    );
  }
}
