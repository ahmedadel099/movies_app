import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:moviesapp/core/error/failuer.dart';
import 'package:moviesapp/core/usecases/base_usecase.dart';
import 'package:moviesapp/movies/domain/entities/movies_recommendations.dart';
import 'package:moviesapp/movies/domain/reposetory/base_movie_repository.dart';

class GetMoviesRecommendationsUseCase
    extends BaseUseCases<List<MoviesRecommendations>, RecommendationsParameters> {
  final BaseMovieRepository baseMovieRepository;

  GetMoviesRecommendationsUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, List<MoviesRecommendations>>> call(
      RecommendationsParameters parameters) async{
 return await  baseMovieRepository.getMoviesRecommendations(parameters);
  }
}


class RecommendationsParameters extends Equatable {
  final int id;

   const RecommendationsParameters( this.id);

  @override
  List<Object> get props => [id];
}