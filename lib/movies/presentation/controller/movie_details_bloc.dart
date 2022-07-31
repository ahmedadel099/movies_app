import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviesapp/core/uutils/enums.dart';
import 'package:moviesapp/movies/domain/entities/movies_details.dart';
import 'package:moviesapp/movies/domain/entities/movies_recommendations.dart';
import 'package:moviesapp/movies/domain/usecases/get)_movies_recommendationns_use_case.dart';
import 'package:moviesapp/movies/domain/usecases/get_movies_details_use_case.dart';

part 'movie_details_event.dart';

part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MoviesDetailsState> {
  MovieDetailsBloc(
      this.getMoviesDetailsUseCase, this.getMoviesRecommendationsUseCase)
      : super(const MoviesDetailsState()) {
    on<GetMovieDetailsEvent>(_getMoviesDetails);
    on<GetMovieRecommendationEvent>(_getMoviesRecommendation);
  }

  final GetMoviesDetailsUseCase getMoviesDetailsUseCase;
  final GetMoviesRecommendationsUseCase getMoviesRecommendationsUseCase;

  FutureOr<void> _getMoviesDetails(
      GetMovieDetailsEvent event, Emitter<MoviesDetailsState> emit) async {
    final result = await getMoviesDetailsUseCase(MoviesDetailParameter(
      movieId: event.id,
    ));

    result.fold(
      (l) => emit(state.copyWith(
        movieDetailsState: RequestState.error,
        moviesDetailsMessage: l.message,
      )),
      (r) => emit(
        state.copyWith(
          moviesDetails: r,
          movieDetailsState: RequestState.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getMoviesRecommendation(GetMovieRecommendationEvent event,
      Emitter<MoviesDetailsState> emit) async {
    final result = await getMoviesRecommendationsUseCase(RecommendationsParameters(
      event.id,
    ));

    result.fold(
      (l) => emit(state.copyWith(
        moviesRecommendationState: RequestState.error,
        moviesRecommendationMessage: l.message,
      )),
      (r) => emit(
        state.copyWith(
          moviesRecommendation: r,
          moviesRecommendationState: RequestState.loaded,
        ),
      ),
    );
  }
}
