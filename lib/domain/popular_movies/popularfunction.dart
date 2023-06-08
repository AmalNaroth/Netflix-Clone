import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:netflix/domain/popular_movies/popular_movies.dart';

Future<List<Result>> getPopularMovies() async {
  final response = await http.get(Uri.parse(
      "https://api.themoviedb.org/3/movie/popular?api_key=329bc35423a1fd39df7f740e6ff90c85"));
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = PopularMovies.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> emptylist = [];
  return emptylist;
}
