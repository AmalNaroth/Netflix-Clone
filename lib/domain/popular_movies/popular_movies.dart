import 'package:json_annotation/json_annotation.dart';
part 'popular_movies.g.dart';

@JsonSerializable()
class PopularMovies {
  List<Result>? results;

  PopularMovies({this.results});

  factory PopularMovies.fromJson(Map<String, dynamic> json) {
    return _$PopularMoviesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PopularMoviesToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: 'poster_path')
  String? posterPath;

  Result({this.posterPath});

  factory Result.fromJson(Map<String, dynamic> json) {
    return _$ResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
