import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:moviesapp/core/error/failuer.dart';
import 'package:moviesapp/core/usecases/base_usecase.dart';
import 'package:moviesapp/movies/domain/entities/movies_details.dart';
import 'package:moviesapp/movies/domain/reposetory/base_movie_repository.dart';

class GetMoviesDetailsUseCase extends BaseUseCases<MoviesDetails, MoviesDetailParameter> {
  BaseMovieRepository baseMovieRepository;

  GetMoviesDetailsUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, MoviesDetails>> call(
      MoviesDetailParameter parameters) async {
    return await baseMovieRepository.getMovieDetails(parameters);
  }
}


///
class MoviesDetailParameter extends Equatable {
  final int movieId;

  const MoviesDetailParameter({required this.movieId});

  @override
  List<Object?> get props => [
        movieId,
      ];
}
