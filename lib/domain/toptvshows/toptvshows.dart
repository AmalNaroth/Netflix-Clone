import 'package:json_annotation/json_annotation.dart';
part 'toptvshows.g.dart';


@JsonSerializable()
class Toptvshows {
	List<Result>? results;

	Toptvshows({this.results});

	factory Toptvshows.fromJson(Map<String, dynamic> json) {
		return _$ToptvshowsFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ToptvshowsToJson(this);
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
