import 'package:dartz/dartz.dart';
import 'package:moviesapp/core/error/failuer.dart';
import 'package:moviesapp/core/usecases/base_usecase.dart';
import 'package:moviesapp/tvs/domain/entities/tvs.dart';
import 'package:moviesapp/tvs/domain/reposetory/base_tvs_repo.dart';

class GetPopularTvsUseCase extends BaseUseCases<List<Tvs>, NoParameters> {
  final BaseTvsRepository baseTvsRepository;

  GetPopularTvsUseCase(this.baseTvsRepository);

  @override
  Future<Either<Failure, List<Tvs>>> call(NoParameters parameters) async {
    return await baseTvsRepository.getPopularTvs();
  }
}
