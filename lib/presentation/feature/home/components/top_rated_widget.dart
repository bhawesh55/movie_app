import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_getx/data/core/api_constants.dart';
import 'package:movie_app_getx/domain/entities/get_popular/movie_result_entity.dart';
import 'package:movie_app_getx/presentation/feature/home/controllers/home.controller.dart';
import 'package:movie_app_getx/utils/app_color.dart';
import 'package:shimmer/shimmer.dart';

class TopRatedWidget extends StatelessWidget {
  const TopRatedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Obx(() {
        final homeController = Get.find<HomeController>();

        List<MovieResultEntity>? movies = homeController.topratedMovies;

        if (homeController.isLoading.value) {
          return _buildShimmerTopRated(context);
        }

        return Row(
          children: List.generate(movies.length, (index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: CachedNetworkImage(
                        height: 200,
                        width: 150,
                        fit: BoxFit.cover,
                        imageUrl:
                            "${ApiConstants.BASE_IMAGE_URL}${movies[index].posterPath}"),
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.6),
                          Colors.black,
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  movies[index].title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge
                                      ?.copyWith(fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                DateTime.tryParse(
                                  movies[index].releaseDate.toIso8601String(),
                                )!
                                    .year
                                    .toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(fontSize: 14),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(movies[index].voteAverage.toString()),
                                  const Icon(
                                    Icons.star,
                                    color: AppColor.yellow,
                                    size: 18,
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
        );
      }),
    );
  }
}

Widget _buildShimmerTopRated(BuildContext context) {
  return Shimmer.fromColors(
    baseColor: AppColor.darkBackground.withOpacity(0.8),
    highlightColor: AppColor.darkBackground.withOpacity(0.9),
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: const SizedBox(
            height: 200,
            width: 150,
          ),
        ),
        Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.6),
                Colors.black,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge
                            ?.copyWith(fontSize: 14),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(""),
                        Icon(
                          Icons.star,
                          color: AppColor.yellow,
                          size: 18,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
