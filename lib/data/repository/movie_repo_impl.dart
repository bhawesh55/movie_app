import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:movie_app_getx/data/data_source/movie_remote_data_source.dart';
import 'package:movie_app_getx/domain/entities/app_error.dart';
import 'package:movie_app_getx/domain/entities/get_popular/get_popular.dart';
import 'package:movie_app_getx/domain/entities/top_rated/top_rated.dart';
import 'package:movie_app_getx/domain/repository/movie_repository.dart';
import 'package:movie_app_getx/domain/utils.dart/typedef.dart';

class MovieRepoImpl extends MovieRepository {
  final MovieRemoteDataSource _movieRemoteDataSource;

  MovieRepoImpl(this._movieRemoteDataSource);

  @override
  ResultFuture<Getpopular> getPopular() async {
    try {
      final movies = await _movieRemoteDataSource.getPupularResponse();

      return Right(movies);
    } on SocketException {
      return const Left(AppError(AppErrorType.network));
    } on Exception {
      return const Left(AppError(AppErrorType.api));
    }
  }

  @override
  ResultFuture<TopRated> getTopRated() async {
    try {
      final movies = await _movieRemoteDataSource.getTopRatedResponse();

      return Right(movies);
    } on SocketException {
      return const Left(AppError(AppErrorType.network));
    } on Exception {
      return const Left(AppError(AppErrorType.api));
    }
  }
}
