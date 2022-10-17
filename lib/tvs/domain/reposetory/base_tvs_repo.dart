import 'package:dartz/dartz.dart';
import 'package:moviesapp/core/error/failuer.dart';
import 'package:moviesapp/tvs/domain/entities/tvs.dart';
import 'package:moviesapp/tvs/domain/entities/tvs_recommendations.dart';
import 'package:moviesapp/tvs/domain/usecase/get_tvs_details_usecase.dart';
import 'package:moviesapp/tvs/domain/usecase/get_tvs_recommendations_usecase.dart';

import '../entities/tvs_details.dart';

abstract class BaseTvsRepository {

  Future<Either<Failure , List<Tvs>>> getOnTheAirTvs();

  Future<Either<Failure , List<Tvs>>> getPopularTvs();

  Future<Either<Failure , List<Tvs>>> getTopRatedTvs();

  Future<Either<Failure , TvsDetails>> getTvsDetails(TvsDetailsParameter parameter);

  Future<Either<Failure , List<TvsRecommendations>>> getTvsRecommendations(TvsRecommendationsParameter parameter);




}