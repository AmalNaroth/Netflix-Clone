import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/number_card.dart';
import 'package:netflix/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBoxH10,
         const MainTitle(title:"Top 10 TV Shows in India Today"),
        SizedBoxH10,
       LimitedBox(
        maxHeight: 200,
         child: ListView(
          scrollDirection: Axis.horizontal,
          children: 
          List.generate(10, (index) =>  NumberCard(index: index+1),)
         ,),
       )
      ],
    );
  }
}