part of 'home_page_cubit.dart';

sealed class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object> get props => [];
}

final class HomePageInitial extends HomePageState {}

final class HomePageLoading extends HomePageState {}

final class HomePageLoaded extends HomePageState {
  final List<MovieDetail> popularMovies;
  final List<MovieDetail> nowPlayingMovies;

  const HomePageLoaded(this.popularMovies, this.nowPlayingMovies);

  @override
  List<Object> get props => [popularMovies];
}

final class HomePageError extends HomePageState {
  final String message;

  const HomePageError(this.message);

  @override
  List<Object> get props => [message];
}
