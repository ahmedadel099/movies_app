import 'package:equatable/equatable.dart';

class Tvs extends Equatable {
  final int id;
  final String? posterPath;
  final List<int> genreIds;
  final String overview;
  final String name;
  final double? voteAverage;
  final String releaseDate;

  const Tvs({
    required this.id,
     required this.posterPath,
    required this.genreIds,
    required this.overview,
    required this.name,
     this.voteAverage,
    required this.releaseDate
  });

  @override
  List<Object?> get props =>
      [id, posterPath, genreIds, overview, name, voteAverage, releaseDate,];
}
