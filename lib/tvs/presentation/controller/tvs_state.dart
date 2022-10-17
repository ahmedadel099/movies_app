part of 'tvs_bloc.dart';

 class TvsState extends Equatable {
  final List<Tvs> onTheAieTvs;
  final RequestState onTheAieTvsState;
  final String onTheAieTvsMessage;

  final List<Tvs> popularTvs;
  final RequestState popularTvsState;
  final String popularTvsMessage;

  final List<Tvs> topRatedTvs;
  final RequestState topRatedTvsState;
  final String topRatedTvsMessage;

  const TvsState({
    this.onTheAieTvs = const [],
    this.onTheAieTvsState = RequestState.loading,
    this.onTheAieTvsMessage = '',
    this.popularTvs = const [],
    this.popularTvsState = RequestState.loading,
    this.popularTvsMessage = '',
    this.topRatedTvs = const [],
    this.topRatedTvsState = RequestState.loading,
    this.topRatedTvsMessage = '',
  });

  TvsState copyWith({
    List<Tvs>? onTheAieTvs,
    RequestState? onTheAieTvsState,
    String? onTheAieTvsMessage,
    List<Tvs>? popularTvs,
    RequestState? popularTvsState,
    String? popularTvsMessage,
    List<Tvs>? topRatedTvs,
    RequestState? topRatedTvsState,
    String? topRatedTvsMessage,
  }) => TvsState(
        onTheAieTvs: onTheAieTvs ?? this.onTheAieTvs,
        onTheAieTvsState: onTheAieTvsState ?? this.onTheAieTvsState,
        onTheAieTvsMessage: onTheAieTvsMessage ?? this.onTheAieTvsMessage,
        popularTvs: popularTvs ?? this.popularTvs,
        popularTvsState: popularTvsState ?? this.popularTvsState,
        popularTvsMessage: popularTvsMessage ?? this.popularTvsMessage,
        topRatedTvs: topRatedTvs ?? this.topRatedTvs,
        topRatedTvsState: topRatedTvsState ?? this.topRatedTvsState,
        topRatedTvsMessage: topRatedTvsMessage ?? this.topRatedTvsMessage,
      );

  @override
  List<Object> get props => [
        onTheAieTvs,
        onTheAieTvsState,
        onTheAieTvsMessage,
        popularTvs,
        popularTvsState,
        popularTvsMessage,
        topRatedTvs,
        topRatedTvsState,
        topRatedTvsMessage,
      ];
}
