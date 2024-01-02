// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'movie_detail_model.g.dart';

@JsonSerializable()
class MovieDetail {
  MovieDetail(
    this.adult,
    this.video,
    this.genre_ids,
    this.id,
    this.vote_count,
    this.original_language,
    this.poster_path,
    this.release_date,
    this.title,
    this.original_title,
    this.overview,
    this.backdrop_path,
    this.popularity,
    this.vote_average,
  );

  factory MovieDetail.fromJson(Map<String, dynamic> json) => _$MovieDetailFromJson(json);
  Map<String, dynamic> toJson() => _$MovieDetailToJson(this);
  final bool? adult, video;
  final List<int>? genre_ids;
  final int? id, vote_count;
  final String? original_language, poster_path, release_date, title, original_title, overview, backdrop_path;
  final double? popularity, vote_average;
}
