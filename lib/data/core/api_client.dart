import 'package:dio/dio.dart';
import 'package:movie_app_getx/data/core/api_constants.dart';
import 'package:movie_app_getx/data/models/get_popular/get_popular_response.dart';
import 'package:movie_app_getx/data/models/top_rated/top_rated_response.dart';
import 'package:retrofit/retrofit.dart';

part "api_client.g.dart";

@RestApi(baseUrl: ApiConstants.BASE_URL)
abstract class ApiClient {
  factory ApiClient() {
    Dio dio = Dio();

    dio.options = BaseOptions(
        receiveTimeout: const Duration(seconds: 30000),
        connectTimeout: const Duration(seconds: 30000),
        contentType: "application/json",
        headers: {
          'Content-Type': 'application/json',
        });

    return _ApiClient(dio, baseUrl: ApiConstants.BASE_URL);
  }

  @GET("movie/popular?api_key=${ApiConstants.API_KEY}&page=1")
  Future<GetpopularResponse> getPopular();

  @GET("movie/top_rated?api_key=${ApiConstants.API_KEY}&language=en-US&page=1")
  Future<TopRatedResponse> getTopRated();
}
