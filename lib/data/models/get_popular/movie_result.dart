import 'package:json_annotation/json_annotation.dart';
part 'movie_result.g.dart';

@JsonSerializable()
class MovieResult {
  @JsonKey(name: "adult")
  final bool adult;

  @JsonKey(name: "backdrop_path")
  final String backdropPath;

  @JsonKey(name: "genre_ids")
  final List<int> genreIds;

  @JsonKey(name: "id")
  final int id;

  @JsonKey(name: "original_language")
  final String originalLanguage;

  @JsonKey(name: "original_title")
  final String originalTitle;

  @JsonKey(name: "overview")
  final String overview;

  @JsonKey(name: "popularity")
  final double popularity;

  @JsonKey(name: "poster_path")
  final String posterPath;

  @JsonKey(name: "release_date")
  final DateTime releaseDate;

  @JsonKey(name: "title")
  final String title;

  @JsonKey(name: "video")
  final bool video;

  @JsonKey(name: "vote_average")
  final double voteAverage;

  @JsonKey(name: "vote_count")
  final int voteCount;

  MovieResult({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  factory MovieResult.fromJson(Map<String, dynamic> json) =>
      _$MovieResultFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResultToJson(this);
}
