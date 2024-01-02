// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:movie_time/models/services/dates_model.dart';
import 'package:movie_time/models/services/movie_detail_model.dart';

part 'now_playing_model.g.dart';

@JsonSerializable()
class NowPlayingModel {
  NowPlayingModel(
    this.dates,
    this.page,
    this.total_pages,
    this.total_results,
    this.results,
  );

  factory NowPlayingModel.fromJson(Map<String, dynamic> json) => _$NowPlayingModelFromJson(json);
  Map<String, dynamic> toJson() => _$NowPlayingModelToJson(this);
  final DatesModel? dates;
  final int? page, total_pages, total_results;
  final List<MovieDetail>? results;
}
