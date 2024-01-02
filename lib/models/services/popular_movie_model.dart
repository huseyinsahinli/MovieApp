// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:movie_time/models/services/movie_detail_model.dart';

part 'popular_movie_model.g.dart';

@JsonSerializable()
class PopularMovieModel {
  PopularMovieModel(
    this.page,
    this.total_pages,
    this.total_results,
    this.results,
  );

  factory PopularMovieModel.fromJson(Map<String, dynamic> json) => _$PopularMovieModelFromJson(json);
  Map<String, dynamic> toJson() => _$PopularMovieModelToJson(this);

  final int? page, total_pages, total_results;
  final List<MovieDetail>? results;
}
