import 'package:dartz/dartz.dart';
import 'package:movie_app_getx/domain/entities/top_rated/top_rated.dart';
import 'package:movie_app_getx/domain/repository/movie_repository.dart';
import 'package:movie_app_getx/domain/usecase/usecase.dart';
import 'package:movie_app_getx/domain/utils.dart/typedef.dart';

class GetTopRatedUseCase extends UsecaseWithNoParams<TopRated> {
  final MovieRepository _getPopularRepository;

  GetTopRatedUseCase(this._getPopularRepository);

  @override
  ResultFuture<TopRated> call() async {
    final response = await _getPopularRepository.getTopRated();

    return response.fold((l) {
      print(l);
      return Left(l);
    }, (r) {
      print(r);
      return Right(r);
    });
  }
}
