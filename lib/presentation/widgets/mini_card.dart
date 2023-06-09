import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/const/const.dart';



class MainCard extends StatelessWidget {
  MainCard({
    super.key,
    required this.index, this.showHomeMovies,
  });
  int index;
   Future<List<dynamic>> Function()? showHomeMovies;

  @override
   Widget build(BuildContext context) {

    return FutureBuilder(
        future:showHomeMovies!(),
        builder: (context, snapshot) {
          String? imagepath = snapshot.data?[index].posterPath;
          return (snapshot.data!=null && snapshot.data!.isNotEmpty) ? 
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
             // margin: EdgeInsets.symmetric(horizontal: 5),
              height: 250,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: NetworkImage('$baseurl$imagepath'),
                      fit: BoxFit.cover),
                  borderRadius: ImageBorderRadious),
            ),
          ): Center(child: CircularProgressIndicator(color: Colors.white,),);
        });
  }
}
