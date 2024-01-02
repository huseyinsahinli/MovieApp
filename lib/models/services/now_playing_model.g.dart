// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NowPlayingModel _$NowPlayingModelFromJson(Map<String, dynamic> json) =>
    NowPlayingModel(
      json['dates'] == null
          ? null
          : DatesModel.fromJson(json['dates'] as Map<String, dynamic>),
      json['page'] as int?,
      json['total_pages'] as int?,
      json['total_results'] as int?,
      (json['results'] as List<dynamic>?)
          ?.map((e) => MovieDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NowPlayingModelToJson(NowPlayingModel instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'total_pages': instance.total_pages,
      'total_results': instance.total_results,
      'results': instance.results,
    };
