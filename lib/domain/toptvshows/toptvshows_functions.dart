import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/domain/toptvshows/toptvshows.dart';

Future<List<Result>> gettoptvshows() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/trending/tv/day?api_key=b7d1c1cf780d9b76cafd47071df61529&language=en-US'));
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = Toptvshows.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}
