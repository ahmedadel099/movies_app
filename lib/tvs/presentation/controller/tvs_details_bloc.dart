import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:moviesapp/core/uutils/enums.dart';
import 'package:moviesapp/tvs/domain/entities/tvs_details.dart';
import 'package:moviesapp/tvs/domain/entities/tvs_recommendations.dart';
import 'package:moviesapp/tvs/domain/usecase/get_tvs_details_usecase.dart';
import 'package:moviesapp/tvs/domain/usecase/get_tvs_recommendations_usecase.dart';

part 'tvs_details_event.dart';

part 'tvs_details_state.dart';

class TvsDetailsBloc extends Bloc<TvsDetailsEvent, TvsDetailsState> {
  TvsDetailsBloc(this.getTvsDetailsUseCase, this.getTvsRecommendationsUseCase)
      : super(const TvsDetailsState()) {
    on<GetTvsDetailsEvent>(_getTvsDetails);
    on<GetTvsRecommendationEvent>(_getTvsRecommendation);
  }

  final GetTvsDetailsUseCase getTvsDetailsUseCase;
  final GetTvsRecommendationsUseCase getTvsRecommendationsUseCase;

  FutureOr<void> _getTvsDetails(
      GetTvsDetailsEvent event, Emitter<TvsDetailsState> emit) async {
    final result = await getTvsDetailsUseCase(TvsDetailsParameter(
      tvId: event.id,
    ));

    result.fold(
      (l) => emit(state.copyWith(
        tvsDetailsState: RequestState.error,
        tvsDetailsMessage: l.message,
      )),
      (r) => emit(
        state.copyWith(
          tvsDetails: r,
          tvsDetailsState: RequestState.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getTvsRecommendation(
      GetTvsRecommendationEvent event, Emitter<TvsDetailsState> emit) async {
    final result =
        await getTvsRecommendationsUseCase(TvsRecommendationsParameter(
      tvId: event.id,
    ));

    result.fold(
      (l) => emit(state.copyWith(
        tvsRecommendationState: RequestState.error,
        tvsRecommendationMessage: l.message,
      )),
      (r) => emit(
        state.copyWith(
          tvsRecommendations: r,
          tvsRecommendationState: RequestState.loaded,
        ),
      ),
    );
  }
}
