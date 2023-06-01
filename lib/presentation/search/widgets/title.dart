import 'package:flutter/material.dart';

class SearchTitle extends StatelessWidget {
  const SearchTitle({
    super.key,
    required this.title,
  });
  final title;
  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
      style:const TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
    );
  }
}
