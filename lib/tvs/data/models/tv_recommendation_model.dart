import 'package:moviesapp/tvs/domain/entities/tvs_recommendations.dart';

class TvsRecommendationModel extends TvsRecommendations {
  const TvsRecommendationModel({required super.posterPath, required super.id});

  factory TvsRecommendationModel.fromJson(Map<String, dynamic> json) =>
     TvsRecommendationModel(id:json['id'], posterPath: json['poster_path']);



}