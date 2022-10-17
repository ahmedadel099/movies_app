import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:moviesapp/core/error/failuer.dart';
import 'package:moviesapp/tvs/domain/entities/tvs_recommendations.dart';

import '../../../core/usecases/base_usecase.dart';
import '../reposetory/base_tvs_repo.dart';

class GetTvsRecommendationsUseCase
    extends BaseUseCases<List<TvsRecommendations>, TvsRecommendationsParameter> {
  BaseTvsRepository baseTvsRepository;

  GetTvsRecommendationsUseCase(this.baseTvsRepository);

  @override
  Future<Either<Failure, List<TvsRecommendations>>> call(TvsRecommendationsParameter parameters)async {
    return await baseTvsRepository.getTvsRecommendations(parameters);
  }

}

class TvsRecommendationsParameter extends Equatable {
  final int tvId;

  const TvsRecommendationsParameter({required this.tvId});

  @override
  List<Object> get props => [tvId];
}
