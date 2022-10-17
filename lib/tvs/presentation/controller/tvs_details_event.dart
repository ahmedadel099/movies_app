part of 'tvs_details_bloc.dart';

abstract class TvsDetailsEvent extends Equatable {
  const TvsDetailsEvent();
}

class GetTvsDetailsEvent extends TvsDetailsEvent {
  final int id;

  const GetTvsDetailsEvent(this.id);

  @override
  List<Object> get props => [id];
}

class GetTvsRecommendationEvent extends TvsDetailsEvent {
  final int id;

  const GetTvsRecommendationEvent(this.id);

  @override
  List<Object> get props => [id];
}