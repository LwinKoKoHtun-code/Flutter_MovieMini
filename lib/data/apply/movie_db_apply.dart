import 'package:movie_db/data/vos/genres_vo/genres_vo.dart';
import 'package:movie_db/data/vos/movie_vo/movie_vo.dart';

abstract class MovieDBApply {
  ///For Network
  Future<List<MovieVO>?> getNowPlayingMovies(int page);
  // Future<List<GenresVO>?> getGenresMovies(int page);

  /// For DataBase
}
