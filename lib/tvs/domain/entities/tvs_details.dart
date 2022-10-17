import 'package:equatable/equatable.dart';
import 'package:moviesapp/tvs/domain/entities/tv_episode_ruuntime.dart';
import 'package:moviesapp/tvs/domain/entities/tvs_gennres.dart';

class   TvsDetails extends Equatable {
  final List<TvsGenres> genres;
  final String? backdropPath;
  final int id;
  final String overview;
  final String releaseDate;
  final double voteAverage;
  final String name;
  final int numberOfSeasons;
  // final List<TvEpisodeRunTime>? episodeRuntime;
  final int? episodeRunTime;

  const TvsDetails({ required this.genres,
     this.episodeRunTime,
    this.backdropPath,
    required this.id,
    required this.overview,
    required this.releaseDate,
    required this.voteAverage,
    required this.name,
    required this.numberOfSeasons});

  @override
  List<Object?> get props =>
      [
        episodeRunTime,
        genres,
        backdropPath,
        id,
        overview,
        releaseDate,
        voteAverage,
        name,
        numberOfSeasons,
      ];
}
