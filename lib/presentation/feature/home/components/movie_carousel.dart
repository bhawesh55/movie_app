import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_getx/data/core/api_constants.dart';
import 'package:movie_app_getx/domain/entities/get_popular/movie_result_entity.dart';
import 'package:movie_app_getx/presentation/feature/home/components/movie_backdrop_widget.dart';
import 'package:movie_app_getx/presentation/feature/home/controllers/home.controller.dart';
import 'package:shimmer/shimmer.dart';

class MovieCarousel extends StatefulWidget {
  final HomeController controller;
  const MovieCarousel(
    this.controller, {
    super.key,
  });

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center,
      children: [],
    );
  }
}

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final homeController = Get.find<HomeController>();

      List<MovieResultEntity>? movies = homeController.movies;

      if (homeController.isLoading.value) {
        return _buildLoadingShimmer();
      }
      return CarouselSlider(
          items: movies.map((movie) {
            return Builder(builder: (BuildContext context) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: CachedNetworkImage(
                    width: MediaQuery.sizeOf(context).width * 0.75,
                    height: MediaQuery.sizeOf(context).width * 0.25,
                    fit: BoxFit.fill,
                    imageUrl:
                        "${ApiConstants.BASE_IMAGE_URL}${movie.posterPath}"),
              );
            });
          }).toList(),
          options: CarouselOptions(
            height: 350,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.bounceInOut,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {},
            scrollDirection: Axis.horizontal,
          ));
    });
  }
}

Widget _buildLoadingShimmer() {
  return Shimmer.fromColors(
    baseColor: Colors.grey[300]!,
    highlightColor: Colors.grey[100]!,
    child: CarouselSlider(
      items: List.generate(
        5, // Number of shimmering placeholders
        (index) => Container(
          width: double.infinity,
          height: 350,
          margin: EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      options: CarouselOptions(
        //... your carousel options ...

        height: 350,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: false,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.bounceInOut,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        onPageChanged: (index, reason) {},
        scrollDirection: Axis.horizontal,
      ),
    ),
  );
}
