import 'package:flutter/material.dart';
import 'package:netflix/domain/const/const.dart';
import 'package:netflix/domain/search/search.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

class SearchResultWidget extends StatelessWidget {
   SearchResultWidget({required this.data,super.key});
   List<Result>data;

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
            children: List.generate(data.length, (index) {
              return (data.isNotEmpty && data!=null) ? MainMovieCard(searchresult: data,index: index,) :Center(child: CircularProgressIndicator());
            })),
        )
      ],
    );
  }
}

class MainMovieCard extends StatelessWidget {
   MainMovieCard({required this.searchresult,required this.index,super.key});

  List<Result> searchresult;
  int index;

  @override
  Widget build(BuildContext context) {
    final data=searchresult[index];
        return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("$baseurl${data.posterPath}"),
              fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(8))
      );
      }
      }