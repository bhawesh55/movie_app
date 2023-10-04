import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app_getx/data/models/get_popular/movie_result.dart';
import 'package:movie_app_getx/domain/entities/get_popular/get_popular.dart';
import 'package:movie_app_getx/domain/entities/get_popular/movie_result_entity.dart';
part 'get_popular_response.g.dart';


@JsonSerializable(explicitToJson: true)
class GetpopularResponse extends Getpopular {
  @override
  @JsonKey(name: "page")
  final int page;

  @JsonKey(name: "results")
  final List<MovieResult> movieResults;

  @override
  @JsonKey(name: "total_pages")
  final int totalPages;

  @override
  @JsonKey(name: "total_results")
  final int totalResults;

  GetpopularResponse({
    required this.page,
    required this.movieResults,
    required this.totalPages,
    required this.totalResults,
  }) : super(
            page: page,
            results: movieResults.map((e) {
              return MovieResultEntity(
                  adult: e.adult,
                  backdropPath: e.backdropPath,
                  genreIds: e.genreIds,
                  id: e.id,
                  originalLanguage: e.originalLanguage,
                  originalTitle: e.originalTitle,
                  overview: e.overview,
                  popularity: e.popularity,
                  posterPath: e.posterPath,
                  releaseDate: e.releaseDate,
                  title: e.title,
                  video: e.video,
                  voteAverage: e.voteAverage,
                  voteCount: e.voteCount);
            }).toList(),
            totalPages: totalPages,
            totalResults: totalResults);

  factory GetpopularResponse.fromJson(Map<String, dynamic> json) =>
      _$GetpopularResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetpopularResponseToJson(this);
}
