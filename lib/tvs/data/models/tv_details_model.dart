import 'package:moviesapp/tvs/data/models/tv_episode_runtime_model.dart';
import 'package:moviesapp/tvs/data/models/tv_genres_model.dart';
import 'package:moviesapp/tvs/domain/entities/tv_episode_ruuntime.dart';
import 'package:moviesapp/tvs/domain/entities/tvs_details.dart';

class TvDetailsModel extends TvsDetails {
  const TvDetailsModel({
     super.episodeRunTime,
    // super.episodeRuntime,
    required super.genres,
      super.backdropPath,
      required super.id,
      required super.overview,
      required super.releaseDate,
      required super.voteAverage,
      required super.name,
      required super.numberOfSeasons});

  factory TvDetailsModel.fromJson(Map<String, dynamic> json) =>
      TvDetailsModel(
        backdropPath:
            json['backdrop_path'] ?? '/698FjyzLdpgXmUSr63LaRwblTmx.jpg',
        genres: List<TvGenresModel>.from(
            json['genres'].map((x) => TvGenresModel.fromJson(x))),
        releaseDate: json['first_air_date'],
        numberOfSeasons: json['number_of_seasons'],
        name: json['name'],
        voteAverage: json['vote_average'],
        id: json['id'],
        overview: json['overview'],
          // episodeRunTime : json['runtime'] ?? '60',

        // episodeRuntime:  List<TvEpisodeRunTimeModel>.from(
        //     json['episode_run_time'].cast<int>(),
        // )
      );
}
