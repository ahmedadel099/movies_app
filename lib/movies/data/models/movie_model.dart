import 'package:moviesapp/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.id,
      required super.posterPath,
      required super.genreIds,
      required super.overview,
      required super.title,
      required super.voteAverage,
      required super.releaseDate
      });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        posterPath: json['poster_path'],
        genreIds: List<int>.from(json['genre_ids'].map((e) => e)) ,
        overview: json['overview'],
        title:json['title'],
        //TODO
        voteAverage: json['vote_average'].toDouble(),
        releaseDate: json['release_date'],
        );
}

