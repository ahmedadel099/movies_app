import 'package:dartz/dartz.dart';
import 'package:moviesapp/core/error/failuer.dart';
import 'package:moviesapp/movies/domain/entities/movie.dart';
import 'package:moviesapp/movies/domain/reposetory/base_movie_repository.dart';
import '../../../core/usecases/base_usecase.dart';

class GetNowPlayingMoviesUseCase extends BaseUseCases<List<Movie>, NoParameters> {

  final BaseMovieRepository baseMovieRepository;
  GetNowPlayingMoviesUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMovieRepository.getNowPlayingMovies();

  }
}