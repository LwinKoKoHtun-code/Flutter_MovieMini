import 'package:dio/dio.dart';
import 'package:movie_db/network/response/genres_response/genres_response.dart';
import 'package:retrofit/http.dart';

import '../../constant/api_constant.dart';
import '../response/movie_response/movie_response.dart';

part 'movie_api.g.dart';

@RestApi(baseUrl: kBaseURL)
abstract class MovieAPI {
  factory MovieAPI(Dio dio) => _MovieAPI(dio);

  @GET(kGetNowPlayingEndPoint)
  Future<MovieResponse> getNowPlayingMovies(
    @Query(kQueryParamsAPIKey) String apiKey,
    @Query(kQueryParamsPage) int page,
  );

  @GET(kGetGenresEndPoint)
  Future<GenresResponse> getGenresMovies(
      @Query(kQueryParamsAPIKey) String apiKey);
}
