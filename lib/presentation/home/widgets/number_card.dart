import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/constants.dart';

class NumberCard extends StatelessWidget {
  final  int index;
  const NumberCard({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(height: 150,width: 40,),
            Container(
              margin:const EdgeInsets.symmetric(horizontal: 5),
              height: 250,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.red,
                image:const DecorationImage(image: AssetImage("assets/travelers.jpg",
                ),fit: BoxFit.cover
                ),
                borderRadius: ImageBorderRadious),
            ),
          ],
        ),
        Positioned(
          //top: 10,
          bottom: -40,
          left: 15,
          child: BorderedText(
            strokeWidth: 5,
            strokeColor: Colors.white,
            child: Text("$index",style:const TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: 120,),))),
      ],
    );
  }
}