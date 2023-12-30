import 'package:equatable/equatable.dart';
import 'package:movie_app_getx/domain/entities/get_popular/movie_result_entity.dart';

class TopRated extends Equatable {
  final int page;
  final List<MovieResultEntity> results;
  final int totalPages;
  final int totalResults;

  const TopRated({
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  @override
  List<Object?> get props => [page, results];
  @override
  bool? get stringify => true;
}
