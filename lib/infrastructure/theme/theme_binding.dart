import 'package:get/get.dart';
import 'package:movie_app_getx/infrastructure/theme/theme_controller.dart';

class ThemeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ThemeController>(ThemeController());
  }
}
