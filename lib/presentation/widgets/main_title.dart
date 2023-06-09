import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final title;
  const MainTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0),
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
      ),
    );
  }
}
