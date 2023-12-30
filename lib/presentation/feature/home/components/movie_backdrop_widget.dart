import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_getx/data/core/api_constants.dart';
import 'package:movie_app_getx/domain/entities/get_popular/movie_result_entity.dart';
import 'package:movie_app_getx/presentation/feature/home/controllers/home.controller.dart';

class MovieBackDrop extends StatelessWidget {
  const MovieBackDrop({
    super.key,
  });

  // final List<MovieResultEntity>? movies;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final homeController = Get.find<HomeController>();

      List<MovieResultEntity>? movies = homeController.movies;

      return PageView.builder(
        controller: PageController(),
        pageSnapping: true,
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl:
                      "${ApiConstants.BASE_IMAGE_URL}${movies[index].posterPath}"),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black.withOpacity(0), Colors.transparent],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
    });
  }
}
