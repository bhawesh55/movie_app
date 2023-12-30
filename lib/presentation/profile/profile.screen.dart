import 'package:flutter/material.dart';

import 'package:movie_app_getx/base/base_page.dart';
import 'package:movie_app_getx/presentation/profile/controllers/profile.controller.dart';
import 'package:movie_app_getx/utils/app_color.dart';

class ProfileScreen extends BasePage<ProfileController> {
  ProfileScreen({
    super.key,
  });



  @override
  PreferredSizeWidget? buildAppbar() {
    
    return AppBar(
      title: Text("Profile Setttings"),
      centerTitle: false,
    );
  }

  @override
  Color scaffoldBackgroundColor() {
    return AppColor.brown;
  }

  @override
  Widget buildView(BuildContext context, ProfileController controller) {
    return Column(
      children: [],
    );
  }
}
