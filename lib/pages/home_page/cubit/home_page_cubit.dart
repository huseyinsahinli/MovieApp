import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_time/core/services/rest_client.dart';
import 'package:movie_time/models/services/movie_detail_model.dart';
import 'package:movie_time/models/services/now_playing_model.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  final RestClient restClient;
  HomePageCubit({
    required this.restClient,
  }) : super(HomePageInitial());

  Future<void> getMovies() async {
    emit(HomePageLoading());
    try {
      final NowPlayingModel movies = await restClient.getNowPlayingMovie();
      if (movies.results == null) {
        emit(const HomePageError("No movies found"));
        return;
      }
      emit(HomePageLoaded(movies.results!));
    } catch (e) {
      emit(HomePageError(e.toString()));
    }
  }
}
