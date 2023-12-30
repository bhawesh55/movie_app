import 'package:get/get.dart';
import 'package:movie_app_getx/infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
import 'package:movie_app_getx/presentation/feature/home/home.screen.dart';
import 'package:movie_app_getx/presentation/screens.dart';



part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  HomeScreen(),
      binding: HomeControllerBinding(),
    ),

    GetPage(
      name: _Paths.PROFILE_SETTINGS,
      page: () => ProfileScreen(),
      binding: ProfileControllerBinding(),
    ),
    
  ];
}
