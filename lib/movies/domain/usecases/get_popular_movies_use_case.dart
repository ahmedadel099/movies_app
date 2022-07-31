import 'package:dartz/dartz.dart';
import 'package:moviesapp/core/usecases/base_usecase.dart';

import '../../../core/error/failuer.dart';
import '../entities/movie.dart';
import '../reposetory/base_movie_repository.dart';

class GetPopularMoviesUseCase extends BaseUseCases <List<Movie>, NoParameters>{

  final BaseMovieRepository baseMovieRepository;

  GetPopularMoviesUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMovieRepository.getPopularMovies();
  }
  }
