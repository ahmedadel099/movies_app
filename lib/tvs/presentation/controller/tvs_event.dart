part of 'tvs_bloc.dart';

abstract class TvsEvent extends Equatable {
  const TvsEvent();

  @override
  List<Object> get props => [];
}

class GetOnTheAirTvsEvent extends TvsEvent {}

class GetPoplarTvsEvent extends TvsEvent {}

class GetTopRatedTvsEvent extends TvsEvent {}
