import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/const/const.dart';
import 'package:netflix/domain/popular_movies/popular_movies.dart';



class MainCard extends StatelessWidget {
  MainCard({
    super.key,
    required this.index, this.showHomeMovies,
  });
  int index;
   Future<List<Result>> Function()? showHomeMovies;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:showHomeMovies!(),
        builder: (context, snapshot) {
          String? imagepath = snapshot.data?[index].posterPath;
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 250,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage('$baseurl$imagepath'),
                    fit: BoxFit.cover),
                borderRadius: ImageBorderRadious),
          );
        });
  }
}
