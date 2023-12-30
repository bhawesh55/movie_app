import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_getx/base/base_page.dart';
import 'package:movie_app_getx/generated/l10n.dart';
import 'package:movie_app_getx/infrastructure/theme/theme_controller.dart';
import 'package:movie_app_getx/presentation/feature/home/components/dot_widget.dart';
import 'package:movie_app_getx/presentation/feature/home/components/header_widget.dart';
import 'package:movie_app_getx/presentation/feature/home/components/movie_carousel.dart';
import 'package:movie_app_getx/presentation/feature/home/components/movie_search_textfield.dart';
import 'package:movie_app_getx/presentation/feature/home/components/top_rated_widget.dart';
import 'package:movie_app_getx/utils/app_color.dart';
import 'controllers/home.controller.dart';

class HomeScreen extends BasePage<HomeController> {
  final themeController = Get.find<ThemeController>();
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget buildView(BuildContext context, HomeController controller) {
    return Stack(
      fit: StackFit.expand,
      children: [
        SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderWidget(),
                const SizedBox(height: 24),
                const MovieSearchTextField(),
                const SizedBox(height: 24),
                HeadingText(title: S.of(context).popular),
                const SizedBox(height: 24),
                const CarouselWidget(),
                const SizedBox(height: 24),
                const DotWidget(),
                HeadingText(
                  title: S.of(context).topRated,
                  isViewAll: true,
                ),
                const SizedBox(height: 24),
                const TopRatedWidget()
              ],
            ),
          ),
        ))
      ],
    );
  }

  @override
  Color scaffoldBackgroundColor() {
    return AppColor.darkBackground;
  }
}

class HeadingText extends StatelessWidget {
  final String title;
  final bool isViewAll;
  const HeadingText({
    required this.title,
    this.isViewAll = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        isViewAll
            ? Text("View all",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: AppColor.darkBackgroundGrey))
            : const Text(""),
      ],
    );
  }
}
