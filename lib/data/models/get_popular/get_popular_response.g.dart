// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_popular_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetpopularResponse _$GetpopularResponseFromJson(Map<String, dynamic> json) =>
    GetpopularResponse(
      page: json['page'] as int,
      movieResults: (json['results'] as List<dynamic>)
          .map((e) => MovieResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$GetpopularResponseToJson(GetpopularResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.movieResults.map((e) => e.toJson()).toList(),
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
