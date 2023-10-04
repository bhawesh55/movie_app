
import 'package:dartz/dartz.dart';
import 'package:movie_app_getx/domain/entities/get_popular/get_popular.dart';
import 'package:movie_app_getx/domain/repository/movie_repository.dart';
import 'package:movie_app_getx/domain/usecase/usecase.dart';
import 'package:movie_app_getx/domain/utils.dart/typedef.dart';


class GetPopularUseCase extends UsecaseWithNoParams<Getpopular> {
  final MovieRepository _getPopularRepository;

  GetPopularUseCase(this._getPopularRepository);

  @override
  ResultFuture<Getpopular> call() async {
    final response = await _getPopularRepository.getPopular();

    return response.fold((l) {
      print(l);
      return Left(l);
    }, (r) {
      print(r);
      return Right(r);
    });
  }
}
