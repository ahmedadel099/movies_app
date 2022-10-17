import 'package:equatable/equatable.dart';

class TvEpisodeRunTime extends Equatable {
  final int m;
  final int? s;

  const TvEpisodeRunTime({  required this.m, this.s});

  @override
  List<int?> get props => [m, s];
}