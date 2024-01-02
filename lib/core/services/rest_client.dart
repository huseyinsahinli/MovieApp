import 'package:dio/dio.dart';
import 'package:movie_time/models/services/now_playing_model.dart';
import 'package:movie_time/models/services/popular_movie_model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/movie/now_playing")
  Future<NowPlayingModel> getNowPlayingMovie();

  @GET("/movie/popular")
  Future<PopularMovieModel> getPopularMovie();
}
