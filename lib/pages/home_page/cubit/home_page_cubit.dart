import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_time/core/services/api_services.dart';
import 'package:movie_time/models/services/movie_model.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());

  Future<void> getMovies() async {
    emit(HomePageLoading());
    try {
      final movies = await ApiService().getNowPlayingMovie();
      emit(HomePageLoaded(movies));
    } catch (e) {
      emit(HomePageError(e.toString()));
    }
  }
}
