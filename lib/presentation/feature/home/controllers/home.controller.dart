import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:movie_app_getx/domain/entities/get_popular/get_popular.dart';
import 'package:movie_app_getx/domain/entities/get_popular/movie_result_entity.dart';
import 'package:movie_app_getx/domain/usecase/home/get_popular_usecase.dart';
import 'package:movie_app_getx/domain/usecase/home/get_top_rated_usecase.dart';
import 'package:movie_app_getx/utils/app_progress.dart';

class HomeController extends GetxController with StateMixin<Getpopular> {
  // Usecase
  final GetPopularUseCase _getPopularUseCase;
  final GetTopRatedUseCase _getTopRatedUseCase;

  // Data & Variables
  var movies = RxList<MovieResultEntity>([]);
  var topratedMovies = RxList<MovieResultEntity>([]);
  var isLoading = true.obs;

  // Constructor
  HomeController(this._getPopularUseCase, this._getTopRatedUseCase);

  @override
  void onInit() {
    getPopular();
    getTopRated();
    super.onInit();
  }

  /// ---------------- GetPopular ----------------- ///

  void getPopular() async {
    isLoading.value = true;
    final movieResponse = await _getPopularUseCase();
    movieResponse.fold((l) => Left(l), (r) {
      movies.assignAll(r.results);
      isLoading.value = false;
    });

  }

  /// ---------------- GetTopRated ----------------- ///

  void getTopRated() async {
    isLoading.value = true;
    final movieResponse = await _getTopRatedUseCase();
    movieResponse.fold((l) => Left(l), (r) {
      topratedMovies.assignAll(r.results);
      isLoading.value = false;
    });
  }
}
