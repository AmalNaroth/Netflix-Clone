import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/const/const.dart';



class MainCard extends StatelessWidget {
  MainCard({
    super.key,
    required this.index, this.showHomeMovies,
    required this.imagepath
  });
  int index;
   Future<List<dynamic>> Function()? showHomeMovies;
    dynamic imagepath;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future:showHomeMovies!(),
        builder: (context, snapshot) {
          String? imagepath = snapshot.data?[index].poster_path;
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
