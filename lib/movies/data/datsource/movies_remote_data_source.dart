import 'package:dio/dio.dart';
import 'package:moviesapp/core/error/exceptions.dart';
import 'package:moviesapp/core/network/api_connstannce.dart';
import 'package:moviesapp/movies/data/models/movie_model.dart';
import 'package:moviesapp/movies/data/models/movies_details_model.dart';
import 'package:moviesapp/movies/data/models/recommendation_model.dart';
import 'package:moviesapp/movies/domain/usecases/get)_movies_recommendationns_use_case.dart';
import 'package:moviesapp/movies/domain/usecases/get_movies_details_use_case.dart';
import'../../../core/network/error_message_model.dart';

abstract class BaseMovieRemoteDataSorce{
  Future<List<MovieModel>> getNowPlayingMovies();
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRatedMovies();
  Future<MoviesDetailsModel> getMoviesDetails(MoviesDetailParameter parameter);
  Future<List<RecommendationModel>> getMoviesRecommendation(
      RecommendationsParameters parameter);
  Future<List<MovieModel>> getAllPopularMovies();

}

class MovieRemoteDataSource extends BaseMovieRemoteDataSorce {

  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(
        ApiConstance.nowPlayingMoviesPath
    );
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List).map(
              (e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final response = await Dio().get(
        ApiConstance.popularMoviesPath
    );
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List).map(
              (e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final response = await Dio().get(
        ApiConstance.topRatedMoviesPath
    );
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List).map(
              (e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<MoviesDetailsModel> getMoviesDetails
      (MoviesDetailParameter parameter) async {
    final response = await Dio().get(
        ApiConstance.moviesDetailsPath(parameter.movieId)
    );
    if (response.statusCode == 200) {
      return MoviesDetailsModel.fromJson(response.data);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<RecommendationModel>> getMoviesRecommendation(
      RecommendationsParameters parameter) async {
    final response = await Dio().get(
        ApiConstance.moviesRecommendationsPath(parameter.id));
    if (response.statusCode == 200) {
      return List<RecommendationModel>.from((response.data['results'] as List).map(
              (e) => RecommendationModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<MovieModel>> getAllPopularMovies() async{
    final response = await Dio().get(
        ApiConstance.popularMoviesPath
    );
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List).map(
              (e) => MovieModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }



}
