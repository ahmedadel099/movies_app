import 'package:dartz/dartz.dart';
import 'package:moviesapp/core/error/exceptions.dart';
import 'package:moviesapp/core/error/failuer.dart';
import 'package:moviesapp/tvs/data/datsource/tvs_remote_data_source.dart';
import 'package:moviesapp/tvs/domain/entities/tvs.dart';
import 'package:moviesapp/tvs/domain/entities/tvs_details.dart';
import 'package:moviesapp/tvs/domain/entities/tvs_recommendations.dart';
import 'package:moviesapp/tvs/domain/reposetory/base_tvs_repo.dart';
import 'package:moviesapp/tvs/domain/usecase/get_tvs_details_usecase.dart';
import 'package:moviesapp/tvs/domain/usecase/get_tvs_recommendations_usecase.dart';

class TvsRepository extends BaseTvsRepository {
  final BaseTvsRemoteDataSource baseTvsRemoteDataSource;

  TvsRepository(this.baseTvsRemoteDataSource);

  @override
  Future<Either<Failure, List<Tvs>>> getOnTheAirTvs() async {
    final result = await baseTvsRemoteDataSource.getOnTheAirTvs();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Tvs>>> getPopularTvs() async {
    final result = await baseTvsRemoteDataSource.getPopularTvs();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Tvs>>> getTopRatedTvs() async {
    final result = await baseTvsRemoteDataSource.getTopRatedTvs();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, TvsDetails>> getTvsDetails(
      TvsDetailsParameter parameter) async {
    final result = await baseTvsRemoteDataSource.getTvsDetails(parameter);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<TvsRecommendations>>> getTvsRecommendations(
      TvsRecommendationsParameter parameter) async {
    final result =
        await baseTvsRemoteDataSource.getTvsRecommendations(parameter);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
