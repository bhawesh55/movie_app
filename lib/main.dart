
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:movie_app_getx/infrastructure/theme/theme_controller.dart';
import 'package:movie_app_getx/presentation/app.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  Get.put(ThemeController());

  // Register the ThemeController

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.black.withOpacity(0.2),
      ),
    );
    return  const App();
  }
}



