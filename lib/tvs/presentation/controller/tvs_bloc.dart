import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:moviesapp/core/usecases/base_usecase.dart';
import 'package:moviesapp/core/uutils/enums.dart';
import 'package:moviesapp/tvs/domain/entities/tvs.dart';
import 'package:moviesapp/tvs/domain/usecase/get_popular_tvs_use_case.dart';
import 'package:moviesapp/tvs/domain/usecase/get_top_rated_tvs_use_case.dart';

import '../../domain/usecase/get_onn_the_air_tvs_use_case.dart';

part 'tvs_event.dart';

part 'tvs_state.dart';

class TvsBloc extends Bloc<TvsEvent, TvsState> {
  final GetOnTheAirTvsUseCase getOnTheAirUseCase;
  final GetPopularTvsUseCase getPopularTvsUseCase;
  final GetTopRatedUseCase getTopRatedUseCase;

  TvsBloc(this.getOnTheAirUseCase, this.getPopularTvsUseCase,
      this.getTopRatedUseCase)
      : super(const TvsState()) {
    on<GetOnTheAirTvsEvent>(_getOnTheAirTvs);
    on<GetPoplarTvsEvent>(_getPopularTvs);
    on<GetTopRatedTvsEvent>(_getTopRatedTvs);
  }

  Future<void> _getOnTheAirTvs(
      GetOnTheAirTvsEvent event, Emitter<TvsState> emit) async {
    final result = await getOnTheAirUseCase(const NoParameters());
    result.fold(
        (l) => emit(state.copyWith(
              onTheAieTvsState: RequestState.error,
              onTheAieTvsMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              onTheAieTvs: r,
              onTheAieTvsState: RequestState.loaded,
            )));
  }

  FutureOr<void> _getPopularTvs(
      GetPoplarTvsEvent event, Emitter<TvsState> emit) async {
    final result = await getPopularTvsUseCase(const NoParameters());
    result.fold(
        (l) => emit(state.copyWith(
              popularTvsState: RequestState.error,
              popularTvsMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              popularTvs: r,
              popularTvsState: RequestState.loaded,
            )));
  }

  FutureOr<void> _getTopRatedTvs(
      GetTopRatedTvsEvent event, Emitter<TvsState> emit) async {
    final result = await getTopRatedUseCase(const NoParameters());
    result.fold(
        (l) => emit(state.copyWith(
              topRatedTvsState: RequestState.error,
              topRatedTvsMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              topRatedTvs: r,
              topRatedTvsState: RequestState.loaded,
            )));
  }
}
