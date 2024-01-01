// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/foundation.dart';

class Movie {
  bool? adult;
  String? backdrop_path;
  List<int>? genre_ids;
  int? id;
  String? original_language;
  String? original_title;
  String? overview;
  double? popularity;
  String? poster_path;
  String? release_date;
  String? title;
  bool? video;
  double? vote_average;
  int? vote_count;
  Movie({
    this.adult,
    this.backdrop_path,
    this.genre_ids,
    this.id,
    this.original_language,
    this.original_title,
    this.overview,
    this.popularity,
    this.poster_path,
    this.release_date,
    this.title,
    this.video,
    this.vote_average,
    this.vote_count,
  });

  Movie copyWith({
    bool? adult,
    String? backdrop_path,
    List<int>? genre_ids,
    int? id,
    String? original_language,
    String? original_title,
    String? overview,
    double? popularity,
    String? poster_path,
    String? release_date,
    String? title,
    bool? video,
    double? vote_average,
    int? vote_count,
  }) {
    return Movie(
      adult: adult ?? this.adult,
      backdrop_path: backdrop_path ?? this.backdrop_path,
      genre_ids: genre_ids ?? this.genre_ids,
      id: id ?? this.id,
      original_language: original_language ?? this.original_language,
      original_title: original_title ?? this.original_title,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      poster_path: poster_path ?? this.poster_path,
      release_date: release_date ?? this.release_date,
      title: title ?? this.title,
      video: video ?? this.video,
      vote_average: vote_average ?? this.vote_average,
      vote_count: vote_count ?? this.vote_count,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (adult != null) {
      result.addAll({'adult': adult});
    }
    if (backdrop_path != null) {
      result.addAll({'backdrop_path': backdrop_path});
    }
    if (genre_ids != null) {
      result.addAll({'genre_ids': genre_ids});
    }
    if (id != null) {
      result.addAll({'id': id});
    }
    if (original_language != null) {
      result.addAll({'original_language': original_language});
    }
    if (original_title != null) {
      result.addAll({'original_title': original_title});
    }
    if (overview != null) {
      result.addAll({'overview': overview});
    }
    if (popularity != null) {
      result.addAll({'popularity': popularity});
    }
    if (poster_path != null) {
      result.addAll({'poster_path': poster_path});
    }
    if (release_date != null) {
      result.addAll({'release_date': release_date});
    }
    if (title != null) {
      result.addAll({'title': title});
    }
    if (video != null) {
      result.addAll({'video': video});
    }
    if (vote_average != null) {
      result.addAll({'vote_average': vote_average});
    }
    if (vote_count != null) {
      result.addAll({'vote_count': vote_count});
    }

    return result;
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      adult: map['adult'],
      backdrop_path: map['backdrop_path'],
      genre_ids: List<int>.from(map['genre_ids']),
      id: map['id']?.toInt(),
      original_language: map['original_language'],
      original_title: map['original_title'],
      overview: map['overview'],
      popularity: map['popularity']?.toDouble(),
      poster_path: map['poster_path'],
      release_date: map['release_date'],
      title: map['title'],
      video: map['video'],
      vote_average: map['vote_average']?.toDouble(),
      vote_count: map['vote_count']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(String source) => Movie.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Movie(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Movie &&
        other.adult == adult &&
        other.backdrop_path == backdrop_path &&
        listEquals(other.genre_ids, genre_ids) &&
        other.id == id &&
        other.original_language == original_language &&
        other.original_title == original_title &&
        other.overview == overview &&
        other.popularity == popularity &&
        other.poster_path == poster_path &&
        other.release_date == release_date &&
        other.title == title &&
        other.video == video &&
        other.vote_average == vote_average &&
        other.vote_count == vote_count;
  }

  @override
  int get hashCode {
    return adult.hashCode ^
        backdrop_path.hashCode ^
        genre_ids.hashCode ^
        id.hashCode ^
        original_language.hashCode ^
        original_title.hashCode ^
        overview.hashCode ^
        popularity.hashCode ^
        poster_path.hashCode ^
        release_date.hashCode ^
        title.hashCode ^
        video.hashCode ^
        vote_average.hashCode ^
        vote_count.hashCode;
  }
}
