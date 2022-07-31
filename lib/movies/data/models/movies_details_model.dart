import 'package:moviesapp/movies/data/models/genres_model.dart';
import 'package:moviesapp/movies/domain/entities/movies_details.dart';
import 'genres_model.dart';

class MoviesDetailsModel extends MoviesDetails {
  const MoviesDetailsModel(
      { super.backdropPath,
      required super.genres,
      required super.id,
      required super.overview,
      required super.releaseDate,
      required super.runTime,
      required super.voteAverage,
      required super.title});

  factory MoviesDetailsModel.fromJson(Map<String, dynamic> json) =>
      MoviesDetailsModel(
        backdropPath: json['backdrop_path'] ?? '/698FjyzLdpgXmUSr63LaRwblTmx.jpg',
        genres: List<GenresModel>.from(
            json['genres'].map((x) => GenresModel.fromJson(x))),
        id: json['id'],
        overview: json['overview'],
        releaseDate: json['release_date'],
        runTime: json['runtime'],

        ///to double
        voteAverage: json['vote_average'],
        title: json['title'],
      );
}
