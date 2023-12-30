import 'package:equatable/equatable.dart';
import 'package:movie_app_getx/domain/entities/get_popular/movie_result_entity.dart';

class Getpopular extends Equatable {
  final int page;
  final List<MovieResultEntity> results;
  final int totalPages;
  final int totalResults;

  const Getpopular({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  @override
  String toString() {
    return super.toString();
  }

  @override
  List<Object?> get props => [page, results];
  @override
  bool? get stringify => true;
}
