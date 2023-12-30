import 'package:dartz/dartz.dart';
import 'package:movie_app_getx/domain/entities/app_error.dart';
import 'package:movie_app_getx/domain/error/failure.dart';

typedef ResultFuture<T> = Future<Either<AppError, T>>;

typedef ResultVoid = Future<Either<Failure, void>>;
