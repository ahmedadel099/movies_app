import 'package:equatable/equatable.dart';

class TvsRecommendations extends Equatable {
  final String? posterPath;
  final int id;

  const TvsRecommendations({ this.posterPath, required this.id});

  @override
  List<Object?> get props => [posterPath, id];
}
