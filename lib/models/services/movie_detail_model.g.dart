// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieDetail _$MovieDetailFromJson(Map<String, dynamic> json) => MovieDetail(
      json['adult'] as bool?,
      json['video'] as bool?,
      (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      json['id'] as int?,
      json['vote_count'] as int?,
      json['original_language'] as String?,
      json['poster_path'] as String?,
      json['release_date'] as String?,
      json['title'] as String?,
      json['original_title'] as String?,
      json['overview'] as String?,
      json['backdrop_path'] as String?,
      (json['popularity'] as num?)?.toDouble(),
      (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MovieDetailToJson(MovieDetail instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'video': instance.video,
      'genre_ids': instance.genre_ids,
      'id': instance.id,
      'vote_count': instance.vote_count,
      'original_language': instance.original_language,
      'poster_path': instance.poster_path,
      'release_date': instance.release_date,
      'title': instance.title,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'backdrop_path': instance.backdrop_path,
      'popularity': instance.popularity,
      'vote_average': instance.vote_average,
    };
