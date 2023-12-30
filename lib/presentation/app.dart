import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_getx/generated/l10n.dart';
import 'package:movie_app_getx/infrastructure/navigation/navigation.dart';
import 'package:movie_app_getx/infrastructure/navigation/routes.dart';
import 'package:movie_app_getx/infrastructure/theme/app_theme.dart';
import 'package:movie_app_getx/infrastructure/theme/theme_binding.dart';
import 'package:movie_app_getx/infrastructure/theme/theme_controller.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Obx(() {
      final themeController = Get.find<ThemeController>();
      return GetMaterialApp(
        navigatorKey: Get.key,
        getPages: Nav.routes,
        initialBinding: ThemeBinding(),
        onGenerateRoute: (settings) => Nav.generateRoute(settings),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.HOME,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeController.themeMode.value,
        localizationsDelegates: const [
          S.delegate,

        ],
      );
    });
  }
}
