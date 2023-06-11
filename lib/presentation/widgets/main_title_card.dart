import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/main_title.dart';
import 'package:netflix/presentation/widgets/mini_card.dart';

class MainTitleCard extends StatefulWidget {
   MainTitleCard({super.key, required this.title,
  required this.showHomeMovies
  });

  final String title;
   Future<List<dynamic>> Function()? showHomeMovies;

  @override
  State<MainTitleCard> createState() => _MainTitleCardState();
}

class _MainTitleCardState extends State<MainTitleCard> {
  List<dynamic> MovieList=[];
  @override
  void initState() {
    imagetoList();
    super.initState();
  }

   Future<void> imagetoList() async{
    MovieList=await widget.showHomeMovies!();
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBoxH10,
        MainTitle(title: widget.title),
        SizedBoxH10,
        LimitedBox(
          maxHeight: 200,
          child: Visibility(
            visible: true,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(MovieList.length,
                (index) => MainCard(index: index,
                showHomeMovies: widget.showHomeMovies,
              ),
            ),
                  ),
                  replacement: Center(child: CircularProgressIndicator(),),
          )
          )
      ]
    );
  }
}
