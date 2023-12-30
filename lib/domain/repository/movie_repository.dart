import 'package:movie_app_getx/domain/entities/get_popular/get_popular.dart';
import 'package:movie_app_getx/domain/entities/top_rated/top_rated.dart';
import 'package:movie_app_getx/domain/utils.dart/typedef.dart';

abstract class MovieRepository {
  const MovieRepository();

  ResultFuture<Getpopular> getPopular();
  ResultFuture<TopRated> getTopRated();
}
