import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/const/const.dart';
import 'package:netflix/domain/search/search_functions.dart';
import 'package:netflix/presentation/search/widgets/title.dart';

class SearchIdleWidget extends StatelessWidget {
   SearchIdleWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTitle(title: "Top searches"),
        SizedBoxH10,
        Expanded(
          child: FutureBuilder(
            future: getimageSearch() ,
            builder:  (context, snapshot) {
              return (snapshot.data!=null && snapshot.data!.isNotEmpty) ? ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => TopSearchItemsTile(index: index),
                separatorBuilder: (context, index) => SizedBoxH20,
                itemCount: snapshot.data!.length):
               const Center(child: CircularProgressIndicator(color: Colors.red,));
            }
          ),
        )
      ],
    );
  }
}

class TopSearchItemsTile extends StatelessWidget {
   TopSearchItemsTile({super.key,required this.index});
   int index;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: getimageSearch(),
      builder: (context, snapshot) {
        String? imagepath = snapshot.data?[index].backdropPath;
        String? movietitle = snapshot.data?[index].title;
        return (snapshot.data!=null && snapshot.data!.isNotEmpty) ? 
        Row(
        children: [
          Container(
            width: screenWidth * .35,
            height: 65,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("$baseurl$imagepath"),
                    fit: BoxFit.cover)),
          ),
          sizedBoxW10,
          Expanded(
              child: Text(
            "$movietitle",
            style: TextStyle(
                color: kwhite, fontWeight: FontWeight.bold, fontSize: 16),
          )),
          CircleAvatar(
            backgroundColor: kwhite,
            radius: 25,
            child: CircleAvatar(
              backgroundColor: kbalck,
              radius: 23,
              child: Icon(
                CupertinoIcons.play_fill,
                color: kwhite,
              ),
            ),
          )
        ],
      ): Center(child: CircularProgressIndicator(),);
      }
    );
  }
}
