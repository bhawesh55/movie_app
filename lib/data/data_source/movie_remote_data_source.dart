import 'package:movie_app_getx/data/core/api_client.dart';
import 'package:movie_app_getx/data/models/get_popular/get_popular_response.dart';
import 'package:movie_app_getx/data/models/top_rated/top_rated_response.dart';

abstract class MovieRemoteDataSource {
  Future<GetpopularResponse> getPupularResponse();
  Future<TopRatedResponse> getTopRatedResponse();
}

class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final ApiClient apiClient;

  MovieRemoteDataSourceImpl({required this.apiClient});

  @override
  Future<GetpopularResponse> getPupularResponse() async {
    return await apiClient.getPopular();
  }

  @override
  Future<TopRatedResponse> getTopRatedResponse() async {
    return await apiClient.getTopRated();
  }
}
