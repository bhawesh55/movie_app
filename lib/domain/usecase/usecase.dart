import 'package:movie_app_getx/domain/utils.dart/typedef.dart';

abstract class UsecaseWithParams<T, Params> {
  const UsecaseWithParams();
  ResultFuture<T> call(Params params);
}

abstract class UsecaseWithNoParams<T> {
  const UsecaseWithNoParams();
  ResultFuture<T> call();
}
