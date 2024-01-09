import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_time/core/services/rest_client.dart';
import 'package:movie_time/models/services/movie_detail_model.dart';
import 'package:movie_time/models/services/now_playing_model.dart';
import 'package:movie_time/models/services/popular_movie_model.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  final RestClient restClient;
  HomePageCubit({
    required this.restClient,
  }) : super(HomePageInitial());

  Future<void> getMovies() async {
    emit(HomePageLoading());
    try {
      final PopularMovieModel movies = await restClient.getPopularMovie();
      final NowPlayingModel nowPlayingMovies = await restClient.getNowPlayingMovie();
      if (movies.results == null || nowPlayingMovies.results == null) {
        emit(const HomePageError("No movies found"));
        return;
      }
      emit(HomePageLoaded(movies.results!, nowPlayingMovies.results!));
    } catch (e) {
      emit(HomePageError(e.toString()));
    }
  }
}
