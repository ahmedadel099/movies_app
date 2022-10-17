import 'package:dartz/dartz.dart';
import 'package:moviesapp/core/error/failuer.dart';
import 'package:moviesapp/core/usecases/base_usecase.dart';
import 'package:moviesapp/movies/domain/entities/all_popular_movies.dart';
import 'package:moviesapp/movies/domain/entities/movie.dart';
import 'package:moviesapp/movies/domain/reposetory/base_movie_repository.dart';

class GetAllPopularMoviesUseCase
    extends BaseUseCases<List<Movie>, NoParameters> {
  final BaseMovieRepository baseMovieRepository;

  GetAllPopularMoviesUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(
      NoParameters parameters) async {
    return await baseMovieRepository.getAllPopularMovies();
  }
}
