import 'package:get_it/get_it.dart';
import 'package:moviesapp/movies/data/datsource/movies_remote_data_source.dart';
import 'package:moviesapp/movies/data/reposetory/movies_repository.dart';
import 'package:moviesapp/movies/domain/reposetory/base_movie_repository.dart';
import 'package:moviesapp/movies/domain/usecases/get)_movies_recommendationns_use_case.dart';
import 'package:moviesapp/movies/domain/usecases/get_movies_details_use_case.dart';
import 'package:moviesapp/movies/domain/usecases/get_now_playing_movies_use_case.dart';
import 'package:moviesapp/movies/domain/usecases/get_popular_movies_use_case.dart';
import 'package:moviesapp/movies/domain/usecases/get_top_rated_movies_use_case.dart';
import 'package:moviesapp/movies/presentation/controller/movie_details_bloc.dart';
import 'package:moviesapp/movies/presentation/controller/movies_bloc.dart';

final sl = GetIt.instance;


class ServiceLocator{

  void init(){
    ///Bloc
    sl.registerFactory(() => MoviesBloc(sl() , sl(), sl()));
    sl.registerFactory(() => MovieDetailsBloc(sl(), sl()));



    ///USE CASES
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMoviesDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetMoviesRecommendationsUseCase(sl()));

    ///REPOSITORY
    sl.registerLazySingleton<BaseMovieRepository>(
            () => MovieRepository(sl()));

    /// DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSorce>(
            () => MovieRemoteDataSource());
  }

}