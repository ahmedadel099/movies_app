import 'package:dartz/dartz.dart';
import 'package:moviesapp/core/error/exceptions.dart';
import 'package:moviesapp/core/error/failuer.dart';
import 'package:moviesapp/movies/domain/entities/movie.dart';
import 'package:moviesapp/movies/domain/entities/movies_details.dart';
import 'package:moviesapp/movies/domain/entities/movies_recommendations.dart';
import 'package:moviesapp/movies/domain/reposetory/base_movie_repository.dart';
import 'package:moviesapp/movies/domain/usecases/get)_movies_recommendationns_use_case.dart';
import 'package:moviesapp/movies/domain/usecases/get_movies_details_use_case.dart';

import '../datsource/movies_remote_data_source.dart';

class MovieRepository extends BaseMovieRepository {
  final BaseMovieRemoteDataSorce baseMovieRemoteDataSorce;

  MovieRepository(this.baseMovieRemoteDataSorce);


  @override
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSorce.getNowPlayingMovies();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSorce.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSorce.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MoviesDetails>> getMovieDetails(MoviesDetailParameter parameter) async {
    final result = await baseMovieRemoteDataSorce.getMoviesDetails(parameter);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MoviesRecommendations>>> getMoviesRecommendations(RecommendationsParameters parameters)async {
    final result = await baseMovieRemoteDataSorce.getMoviesRecommendation(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  

}