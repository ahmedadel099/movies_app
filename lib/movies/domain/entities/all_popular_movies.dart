import 'package:equatable/equatable.dart';

class AllPopularMovies extends Equatable {
  final int id;
  final String posterPath;
  final String title;
  final String overview;
  final double voteAverage;
  final String releaseDate;

  const AllPopularMovies(this.id, this.posterPath, this.title, this.overview,
      this.voteAverage, this.releaseDate);

  @override
  List<Object> get props =>
      [id, posterPath, title, overview, voteAverage, releaseDate,];
}