import 'package:flutter/material.dart';
import 'package:movie_app_getx/utils/app_color.dart';

class AppProgress {
  AppProgress(BuildContext context) {
    showDialog<Null>(
        context: context,
        barrierDismissible: false,
        barrierColor: AppColor.darkBackgroundGrey.withOpacity(0.5),
        useSafeArea: true,
        builder: (BuildContext context) {
          // AppConstants.IS_ERROR = false;
          return WillPopScope(
            onWillPop: () async => false,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
