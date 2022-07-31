import 'package:equatable/equatable.dart';

import 'genres.dart';

class MoviesDetails extends Equatable {
  final List<Genres> genres;
  final String? backdropPath;
  final int id;
  final String overview;
  final String releaseDate;
  final int runTime;
  final double voteAverage;
  final String title;

 const MoviesDetails({
    this.backdropPath,
   required this.genres,
   required this.id,
   required this.overview,
   required this.releaseDate,
   required this.runTime,
   required this.voteAverage,
   required this.title,
 });

  @override
  List<Object?> get props => [
    backdropPath,
    genres,
    id,
    overview,
    releaseDate,
    runTime,
    voteAverage,
    title,
  ];
}
