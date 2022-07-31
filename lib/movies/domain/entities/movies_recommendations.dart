import 'package:equatable/equatable.dart';

class MoviesRecommendations extends Equatable {
  final String? posterPath;
  final int id;

  const MoviesRecommendations({ this.posterPath, required this.id});


  @override
  List<Object?> get props => [posterPath, id];
}
