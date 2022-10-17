import 'package:moviesapp/tvs/domain/entities/tvs.dart';

class TvsModel extends Tvs {
  const TvsModel({required super.id,
     super.posterPath,
    required super.genreIds,
    required super.overview,
    required super.name,
     super.voteAverage,
    required super.releaseDate});

  factory TvsModel.fromJson(Map<String, dynamic> json) =>
      TvsModel(
          id: json['id'],
          posterPath: json['poster_path'] ?? '/698FjyzLdpgXmUSr63LaRwblTmx.jpg',
          genreIds: List<int>.from(json['genre_ids'].map((e) => e)) ,
          overview: json['overview'],
          name: json['name'],
          voteAverage: json['vote_average'].toDouble(),
          releaseDate: json['first_air_date'],
  );
}
