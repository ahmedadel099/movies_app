class ApiConstance {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '957ceac672494e08d0c72ad28b02f3f3';
  static const String nowPlayingMoviesPath =
      '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const String popularMoviesPath =
      '$baseUrl/movie/popular?api_key=$apiKey';
  static const String topRatedMoviesPath =
      '$baseUrl/movie/top_rated?api_key=$apiKey';
  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500/';

  static String moviesDetailsPath(int movIed) =>
      '$baseUrl/movie/$movIed?api_key=$apiKey';

  static String moviesRecommendationsPath(int movIed) =>
      '$baseUrl/movie/$movIed/recommendations?api_key=$apiKey';

  static String imageUrl(String path) => '$baseImageUrl$path';

  /// tvs
  static const String tvOnTheAirPath = '$baseUrl/tv/on_the_air?api_key=$apiKey';

  static const String popularTvsPath = '$baseUrl/tv/popular?api_key=$apiKey';

  static const String topRatedTvsPath = '$baseUrl/tv/top_rated?api_key=$apiKey';

  static String tvsDetailsPath(int tvId) => '$baseUrl/tv/$tvId?api_key=$apiKey';

  static String tvsRecommendationPath(int tvId) =>
      '$baseUrl/tv/$tvId/recommendations?api_key=$apiKey';
}
