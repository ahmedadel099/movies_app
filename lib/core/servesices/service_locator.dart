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
import 'package:moviesapp/tvs/data/datsource/tvs_remote_data_source.dart';
import 'package:moviesapp/tvs/data/reposetory/tvs_repository.dart';
import 'package:moviesapp/tvs/domain/reposetory/base_tvs_repo.dart';
import 'package:moviesapp/tvs/domain/usecase/get_onn_the_air_tvs_use_case.dart';
import 'package:moviesapp/tvs/domain/usecase/get_popular_tvs_use_case.dart';
import 'package:moviesapp/tvs/domain/usecase/get_top_rated_tvs_use_case.dart';
import 'package:moviesapp/tvs/domain/usecase/get_tvs_details_usecase.dart';
import 'package:moviesapp/tvs/domain/usecase/get_tvs_recommendations_usecase.dart';
import 'package:moviesapp/tvs/presentation/controller/tvs_bloc.dart';
import 'package:moviesapp/tvs/presentation/controller/tvs_details_bloc.dart';

final sl = GetIt.instance;

class ServiceLocator {
  void init() {
    /// Movies Bloc
    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl()));
    sl.registerFactory(() => MovieDetailsBloc(sl(), sl()));

    /// TVS Bloc
    sl.registerFactory(() => TvsBloc(sl(), sl(), sl()));
    sl.registerFactory(() => TvsDetailsBloc(sl(), sl()));

    /// Movies USE CASES
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMoviesDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetMoviesRecommendationsUseCase(sl()));

    /// tvs use cases
    sl.registerLazySingleton(() => GetOnTheAirTvsUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularTvsUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedUseCase(sl()));
    sl.registerLazySingleton(() => GetTvsDetailsUseCase(sl()));
    sl.registerLazySingleton(() => GetTvsRecommendationsUseCase(sl()));

    /// Movies REPOSITORY
    sl.registerLazySingleton<BaseMovieRepository>(() => MovieRepository(sl()));

    /// tvs repository
    sl.registerLazySingleton<BaseTvsRepository>(() => TvsRepository(sl()));

    /// MOVIES DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSorce>(
        () => MovieRemoteDataSource());

    /// TVS Data Source
    sl.registerLazySingleton<BaseTvsRemoteDataSource>(
        () => TvsRemoteDataSource());
  }
}
