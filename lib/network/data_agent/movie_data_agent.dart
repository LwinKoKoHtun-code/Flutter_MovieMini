import 'package:movie_db/data/vos/genres_vo/genres_vo.dart';
import 'package:movie_db/data/vos/movie_vo/movie_vo.dart';

abstract class MovieDataAgent {
  Future<List<MovieVO>?> getNowPlaying(int page);
}
