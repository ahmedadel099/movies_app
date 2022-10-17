part of 'tvs_details_bloc.dart';

 class TvsDetailsState extends Equatable {
  final TvsDetails? tvsDetails;
  final RequestState tvsDetailsState;
  final String tvsDetailsMessage;

  final List<TvsRecommendations> tvsRecommendations;
  final RequestState tvsRecommendationState;
  final String tvsRecommendationMessage;

  const TvsDetailsState({
    this.tvsDetails,
    this.tvsDetailsState = RequestState.loading,
    this.tvsDetailsMessage = '',
    this.tvsRecommendations = const [],
    this.tvsRecommendationState = RequestState.loading,
    this.tvsRecommendationMessage = '',
  });

  TvsDetailsState copyWith({
    TvsDetails? tvsDetails,
    RequestState? tvsDetailsState,
    String? tvsDetailsMessage,
    List<TvsRecommendations>? tvsRecommendations,
    RequestState? tvsRecommendationState,
    String? tvsRecommendationMessage,
  }) {
    return TvsDetailsState(
      tvsDetails: tvsDetails ?? this.tvsDetails,
      tvsDetailsState: tvsDetailsState ?? this.tvsDetailsState,
      tvsDetailsMessage: tvsDetailsMessage ?? this.tvsDetailsMessage,
      tvsRecommendations: tvsRecommendations ?? this.tvsRecommendations,
      tvsRecommendationState:
          tvsRecommendationState ?? this.tvsRecommendationState,
      tvsRecommendationMessage:
          tvsRecommendationMessage ?? this.tvsRecommendationMessage,
    );
  }

  @override
  List<Object?> get props => [
        tvsDetails,
        tvsDetailsState,
        tvsDetailsMessage,
        tvsRecommendations,
        tvsRecommendationState,
        tvsRecommendationMessage,
      ];
}
