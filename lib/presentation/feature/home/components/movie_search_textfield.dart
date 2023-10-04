import 'package:flutter/material.dart';
import 'package:movie_app_getx/generated/l10n.dart';
import 'package:movie_app_getx/utils/app_color.dart';

class MovieSearchTextField extends StatelessWidget {
  const MovieSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.darkBackgroundGrey.withOpacity(0.32),
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: AppColor.white.withOpacity(0.32),
            ),
            hintText: S.of(context).search),
      ),
    );
  }
}
