import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 250,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.red,
        image:const DecorationImage(image: AssetImage("assets/lucifer.jpg",
        ),fit: BoxFit.cover
        ),
        borderRadius: ImageBorderRadious),
    );
  }
}