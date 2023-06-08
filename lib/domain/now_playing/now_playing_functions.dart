import 'dart:convert';
import 'package:netflix/domain/now_playing/now_playing.dart';

import 'package:http/http.dart' as http;

Future<List<Result>> getImageNowPlaying() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/now_playing?api_key=b7d1c1cf780d9b76cafd47071df61529&language=en-US&page=1'));
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = NowPlaying.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}