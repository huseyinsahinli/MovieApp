import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:movie_time/models/services/movie_model.dart';

class ApiService {
  final Dio _dio = Dio();

  final String baseUrl = "https://api.themoviedb.org/3/";
  //TODO: Environment variable
  final String apiKey = "PUT YOUR API KEY HERE";
  final String imageUrl = "https://image.tmdb.org/t/p/w500";

  Future<List<Movie>> getNowPlayingMovie() async {
    try {
      final url = '$baseUrl/movie/now_playing?api_key=$apiKey';
      final response = await _dio.get(
        url,
        options: Options(
          headers: {
            "accept": "application/json",
            "Authorization": "Bearer $apiKey",
          },
        ),
      );
      var responseData = response.data;

      if (responseData is String) {
        responseData = json.decode(responseData);
      }
      if (responseData is Map<String, dynamic> && responseData.containsKey('results')) {
        var movies = responseData['results'];
        log("Movies: $movies");
        List<Movie> movieList = [];
        for (var movie in movies) {
          log("Movie: ${Movie.fromMap(movie)}");
          movieList.add(Movie.fromMap(movie));
        }

        return movieList;
      } else {
        throw Exception('Invalid data format received from the API');
      }
    } catch (error, stacktrace) {
      throw Exception('Exception occurred: $error with stacktrace: $stacktrace');
    }
  }
}
