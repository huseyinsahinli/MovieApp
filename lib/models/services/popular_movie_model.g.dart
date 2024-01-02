// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularMovieModel _$PopularMovieModelFromJson(Map<String, dynamic> json) =>
    PopularMovieModel(
      json['page'] as int?,
      json['total_pages'] as int?,
      json['total_results'] as int?,
      (json['results'] as List<dynamic>?)
          ?.map((e) => MovieDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopularMovieModelToJson(PopularMovieModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
      'results': instance.results,
    };
