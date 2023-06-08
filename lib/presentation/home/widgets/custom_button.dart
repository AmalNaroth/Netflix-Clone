import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.icon,
      required this.title,
      this.size = 30,
      this.fontsize = 18});
  final double size;
  IconData icon;
  final title;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: size,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: fontsize),
        ),
      ],
    );
  }
}
