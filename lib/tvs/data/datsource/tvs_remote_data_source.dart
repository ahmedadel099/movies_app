import 'package:dio/dio.dart';
import 'package:moviesapp/core/error/exceptions.dart';
import 'package:moviesapp/core/network/error_message_model.dart';
import 'package:moviesapp/tvs/data/models/tv_details_model.dart';
import 'package:moviesapp/tvs/data/models/tv_recommendation_model.dart';
import 'package:moviesapp/tvs/data/models/tvs_model.dart';
import 'package:moviesapp/tvs/domain/usecase/get_tvs_details_usecase.dart';
import 'package:moviesapp/tvs/domain/usecase/get_tvs_recommendations_usecase.dart';
import '../../../core/network/api_connstannce.dart';

abstract class BaseTvsRemoteDataSource {
  Future<List<TvsModel>> getOnTheAirTvs();

  Future<List<TvsModel>> getPopularTvs();

  Future<List<TvsModel>> getTopRatedTvs();

  Future<TvDetailsModel> getTvsDetails(TvsDetailsParameter parameter);

  Future<List<TvsRecommendationModel>> getTvsRecommendations(
      TvsRecommendationsParameter parameter);
}

class TvsRemoteDataSource extends BaseTvsRemoteDataSource {
  @override
  Future<List<TvsModel>> getOnTheAirTvs() async {
    final response = await Dio().get(ApiConstance.tvOnTheAirPath);
    if (response.statusCode == 200) {
      return List<TvsModel>.from(
          (response.data['results'] as List).map((e) => TvsModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<TvsModel>> getPopularTvs() async {
    final response = await Dio().get(ApiConstance.popularTvsPath);
    if (response.statusCode == 200) {
      return List<TvsModel>.from(
          (response.data['results'] as List).map((e) => TvsModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<TvsModel>> getTopRatedTvs() async {
    final response = await Dio().get(ApiConstance.topRatedTvsPath);
    if (response.statusCode == 200) {
      return List<TvsModel>.from(
          (response.data['results'] as List).map((e) => TvsModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<TvDetailsModel> getTvsDetails(TvsDetailsParameter parameter) async{
    final response = await Dio().get(
        ApiConstance.tvsDetailsPath(parameter.tvId)
    );
    if (response.statusCode == 200) {
      return TvDetailsModel.fromJson(response.data);
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

  @override
  Future<List<TvsRecommendationModel>> getTvsRecommendations(TvsRecommendationsParameter parameter)async {
    final response = await Dio().get(
        ApiConstance.tvsRecommendationPath(parameter.tvId));
    if (response.statusCode == 200) {
      return List<TvsRecommendationModel>.from((response.data['results'] as List).map(
              (e) => TvsRecommendationModel.fromJson(e)));
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }

}
