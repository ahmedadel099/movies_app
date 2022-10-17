import 'package:moviesapp/tvs/domain/entities/tvs_gennres.dart';

class TvGenresModel extends TvsGenres {
  const TvGenresModel({required super.name, required super.id});

  factory TvGenresModel.fromJson(Map<String, dynamic> json) =>
      TvGenresModel(id: json['id'], name: json['name']);
}
