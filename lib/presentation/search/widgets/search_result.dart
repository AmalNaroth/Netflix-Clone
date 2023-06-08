import 'package:flutter/material.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitle(title: "Movie & Tv"),
        Expanded(
          child: GridView.count(
              shrinkWrap: true,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              crossAxisCount: 3,
              childAspectRatio: 1 / 1.4,
              children: List.generate(20, (index) {
                return MainMovieCard();
              })),
        )
      ],
    );
  }
}

class MainMovieCard extends StatelessWidget {
  const MainMovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/johnwick.jpg",
              ),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
