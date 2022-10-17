import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:moviesapp/core/error/failuer.dart';
import 'package:moviesapp/tvs/domain/entities/tvs_details.dart';
import 'package:moviesapp/tvs/domain/reposetory/base_tvs_repo.dart';

import '../../../core/usecases/base_usecase.dart';

class GetTvsDetailsUseCase
    extends BaseUseCases<TvsDetails, TvsDetailsParameter> {
  BaseTvsRepository baseTvsRepository;

  GetTvsDetailsUseCase(this.baseTvsRepository);

  @override
  Future<Either<Failure, TvsDetails>> call(
      TvsDetailsParameter parameters) async {
    return await baseTvsRepository.getTvsDetails(parameters);
  }
}

class TvsDetailsParameter extends Equatable {
  final int tvId;

  const TvsDetailsParameter({required this.tvId});

  @override
  List<Object> get props => [tvId];
}
