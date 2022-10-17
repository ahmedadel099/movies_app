
import '../../domain/entities/tv_episode_ruuntime.dart';

class TvEpisodeRunTimeModel extends TvEpisodeRunTime{
  const TvEpisodeRunTimeModel({required super.m});

  factory TvEpisodeRunTimeModel.fromJson(Map<int, dynamic> json) =>
      TvEpisodeRunTimeModel(m: json['episode_run_time']);
  }