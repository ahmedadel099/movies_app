import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String posterPath;
  final List<int> genreIds;
  final String overview;
  final String title;
  final double voteAverage;
  final String releaseDate;

  const Movie({
    required this.id,
    required this.posterPath,
    required this.genreIds,
    required this.overview,
    required this.title,
    required this.voteAverage,
    required this.releaseDate,
  });

  @override
  List<Object?> get props => [
        id,
        posterPath,
        genreIds,
        overview,
        title,
        voteAverage,
        releaseDate,
      ];
}
