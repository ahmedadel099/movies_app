import 'package:dartz/dartz.dart';
import 'package:moviesapp/movies/domain/entities/movie.dart';
import 'package:moviesapp/movies/domain/entities/movies_details.dart';
import 'package:moviesapp/movies/domain/entities/movies_recommendations.dart';
import 'package:moviesapp/movies/domain/usecases/get)_movies_recommendationns_use_case.dart';
import 'package:moviesapp/movies/domain/usecases/get_movies_details_use_case.dart';

import '../../../core/error/failuer.dart';

abstract class BaseMovieRepository{


  Future<Either<Failure , List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure , List<Movie>>> getPopularMovies();

  Future<Either<Failure , List<Movie>>> getTopRatedMovies();

  Future<Either<Failure , MoviesDetails>> getMovieDetails(MoviesDetailParameter parameter);
  Future<Either<Failure , List<MoviesRecommendations>>> getMoviesRecommendations(
      RecommendationsParameters parameters
      );


}