part of 'movie_details_bloc.dart';

class MoviesDetailsState extends Equatable {
  final MoviesDetails? moviesDetails;
  final RequestState movieDetailsState;
  final String moviesDetailsMessage;

  final List<MoviesRecommendations> moviesRecommendation;
  final RequestState moviesRecommendationState;
  final String moviesRecommendationMessage;

  const MoviesDetailsState({
    this.moviesDetails,
    this.movieDetailsState = RequestState.loading,
    this.moviesDetailsMessage = '',
    this.moviesRecommendation = const [],
    this.moviesRecommendationState = RequestState.loading,
    this.moviesRecommendationMessage = '',
  });

  MoviesDetailsState copyWith({
    MoviesDetails? moviesDetails,
    RequestState? movieDetailsState,
    String? moviesDetailsMessage,
    List<MoviesRecommendations>? moviesRecommendation,
    RequestState? moviesRecommendationState,
    String? moviesRecommendationMessage,
  }) {
    return MoviesDetailsState(
      moviesDetails: moviesDetails ?? this.moviesDetails,
      movieDetailsState: movieDetailsState ?? this.movieDetailsState,
      moviesDetailsMessage: moviesDetailsMessage ?? this.moviesDetailsMessage,
      moviesRecommendation: moviesRecommendation ?? this.moviesRecommendation,
      moviesRecommendationState:
          moviesRecommendationState ?? this.moviesRecommendationState,
      moviesRecommendationMessage:
          moviesRecommendationMessage ?? this.moviesRecommendationMessage,
    );
  }

  @override
  List<Object?> get props => [
        moviesDetails,
        movieDetailsState,
        moviesDetailsMessage,
        moviesRecommendation,
        moviesRecommendationState,
        moviesRecommendationMessage,
      ];
}
