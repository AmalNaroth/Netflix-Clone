import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  final appBarTitle;
  const AppBarWidget({super.key,required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      sizedBoxW10,
      Text(appBarTitle,
      style: TextStyle(fontSize: 28,
      fontWeight: FontWeight.bold
      ),
      ),
      Spacer(),
      Icon(Icons.cast,
      color: kwhite,
      size: 28,
      ),
      sizedBoxW10,
      Container(
        height: 28,
        width: 28,
        color: Colors.blue,
      ),
      sizedBoxW10
    ],);
  }
}