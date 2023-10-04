import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../config.dart';
import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  const EnvironmentsBadge({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.HOME:
        return GetPageRoute(
          transition: Transition.cupertino,
          page: () => HomeScreen(),
          settings: const RouteSettings(name: Routes.HOME),
        );

      default:
        return CupertinoPageRoute(
          builder: (context) => Container(),
        );
    }
  }

  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
  ];
}
