import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/core/usecases/base_usecase.dart';
import 'package:moviesapp/core/uutils/enums.dart';
import 'package:moviesapp/movies/domain/usecases/get_now_playing_movies_use_case.dart';
import 'package:moviesapp/movies/domain/usecases/get_popular_movies_use_case.dart';
import 'package:moviesapp/movies/domain/usecases/get_top_rated_movies_use_case.dart';
import 'package:moviesapp/movies/presentation/controller/movies_event.dart';
import 'package:moviesapp/movies/presentation/controller/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  MoviesBloc(this.getNowPlayingMoviesUseCase,
      this.getPopularMoviesUseCase,
      this.getTopRatedMoviesUseCase) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);

    on<GetPopularMoviesEvent>(_getPopularMovies);

    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
  }

  Future<void> _getNowPlayingMovies(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getNowPlayingMoviesUseCase(const NoParameters());
    result.fold(
        (l) => emit(state.copyWith(
              nowPlayingState: RequestState.error,
              nowPlayingMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              nowPlayingMovies: r,
              nowPlayingState: RequestState.loaded,
            )));
  }

  Future<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getPopularMoviesUseCase(const NoParameters());
    // emit(const MoviesState(popularMoviesState: RequestState.loaded));
    result.fold(
        (l) => emit(state.copyWith(
              popularMoviesState: RequestState.error,
              popularMoviesMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              popularMovies: r,
              popularMoviesState: RequestState.loaded,
            )));
  }

  Future<void> _getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedMoviesUseCase(const NoParameters());
    // emit(const MoviesState(topRatedMoviesState: RequestState.loaded));
    result.fold(
        (l) => emit(state.copyWith(
              topRatedMoviesState: RequestState.error,
              topRatedMoviesMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              topRatedMovies: r,
              topRatedMoviesState: RequestState.loaded,
            )));
  }
}
