import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/now_playing/now_playing.dart';
import 'package:netflix/domain/popular_movies/popularfunction.dart';
import 'package:netflix/domain/trending/trending_functions.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/mini_card.dart';

class MainTitleCard extends StatelessWidget {
   MainTitleCard({super.key, required this.title,
  //required this.showHomeMovies
  });

  final String title;
   //Future<List<Result>> Function() showHomeMovies;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBoxH10,
        MainTitle(title: title),
        SizedBoxH10,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10,
              (index) => MainCard(index: index,
              showHomeMovies: getPopularMovies,
            ),
          ),
        ))
      ]
    );
  }
}
