import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/mini_card.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBoxH10,
         MainTitle(title:title),
        SizedBoxH10,
       LimitedBox(
        maxHeight: 200,
         child: ListView(
          scrollDirection: Axis.horizontal,
          children: 
          List.generate(10, (index) =>const  MainCard(),)
         ,),
       )
      ],
    );
  }
}
