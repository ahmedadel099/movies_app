import 'package:moviesapp/movies/domain/entities/movies_recommendations.dart';

class RecommendationModel extends MoviesRecommendations {
  const RecommendationModel({ super.posterPath, required super.id});

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        posterPath: json['poster_path'] ?? '/jcUXVtJ6s0NG0EaxllQCAUtqdr0.jpg',
        id: json['id'],
      );
}
