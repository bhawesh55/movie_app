import 'package:get/get.dart';
import 'package:movie_app_getx/data/core/api_client.dart';
import 'package:movie_app_getx/data/data_source/movie_remote_data_source.dart';
import 'package:movie_app_getx/data/repository/movie_repo_impl.dart';
import 'package:movie_app_getx/domain/repository/movie_repository.dart';
import 'package:movie_app_getx/domain/usecase/home/get_popular_usecase.dart';
import 'package:movie_app_getx/domain/usecase/home/get_top_rated_usecase.dart';

import '../../../../presentation/feature/home/controllers/home.controller.dart';

class HomeControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MovieRemoteDataSource>(
        () => MovieRemoteDataSourceImpl(apiClient: ApiClient()));

    Get.lazyPut<MovieRepository>(
        () => MovieRepoImpl(Get.find<MovieRemoteDataSource>()));

    Get.lazyPut<GetPopularUseCase>(
        () => GetPopularUseCase(Get.find<MovieRepository>()));

    Get.lazyPut<GetTopRatedUseCase>(
        () => GetTopRatedUseCase(Get.find<MovieRepository>()));

    Get.lazyPut<HomeController>(
      () => HomeController(
          Get.find<GetPopularUseCase>(), Get.find<GetTopRatedUseCase>()),
    );
  }
}
