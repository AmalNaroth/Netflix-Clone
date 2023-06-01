import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class DownloadScreen extends StatelessWidget {
  DownloadScreen({super.key});

  final widgetList = [const SmartDownloads(), SectionOne(), const SectionTwo()];

  @override
  Widget build(BuildContext context) {
    //final Size MediaSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              appBarTitle: "Downloads",
            )),
        body: ListView.separated(
          //padding: EdgeInsets.symmetric(10),
            itemBuilder: (context, index) => widgetList[index],
            separatorBuilder: (context, index) => sizedBoxW10,
            itemCount: widgetList.length));
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        Text("Smart Downloads"),
      ],
    );
  }
}

class SectionOne extends StatelessWidget {
  SectionOne({super.key});
  final List imageList = [
    "assets/lucifer.jpg",
    "assets/wednesday.jpg",
    "assets/travelers.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final Size MediaSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: 25,),
        const Text(
          "Introducing Downloads for you",
          style: TextStyle(
              color: kwhite, fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBoxH10,
        const Text(
          "We'll download a personalised selection of\nmovies and shows for you,so there's\nalways somthing to watch on your\ndevice.",
          style: TextStyle(color: Colors.grey, fontSize: 18),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: MediaSize.width,
          width: MediaSize.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: MediaSize.width * 0.4,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              DownloadsImageWidgets(
                imageList: imageList[2],
                MediaSize: Size(MediaSize.width * 0.35, MediaSize.width * 0.55),
                imageMargin: const EdgeInsets.only(left: 170,top: 50),
                imageAngle: 25,
              ),
              DownloadsImageWidgets(
                imageList: imageList[0],
                MediaSize: Size(MediaSize.width * 0.35, MediaSize.width * 0.55),
                imageMargin: const EdgeInsets.only(right: 170,top: 50),
                imageAngle: -25,
              ),
              DownloadsImageWidgets(
                  imageList: imageList[1],
                  MediaSize:
                      Size(MediaSize.width * 0.42, MediaSize.width * 0.62),
                  imageMargin: const EdgeInsets.only(bottom: 35,top: 50))
            ],
          ),
        ),
      ],
    );
  }
}

class SectionTwo extends StatelessWidget {
  const SectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 350,
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: kButtonColorBlue,
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Setup",
                style: TextStyle(
                    color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        SizedBoxH10,
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          color: kwhite,
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "See what you can download",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class DownloadsImageWidgets extends StatelessWidget {
  const DownloadsImageWidgets(
      {super.key,
      required this.imageList,
      this.imageAngle = 0,
      required this.MediaSize,
      required this.imageMargin});
  final Size MediaSize;
  final double imageAngle;
  final String imageList;
  final EdgeInsets imageMargin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: imageMargin,
      child: Transform.rotate(
        angle: imageAngle * pi / 180,
        child: Container(
         //margin: imageMargin,
          width: MediaSize.width,
          height: MediaSize.height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue,
              image: DecorationImage(
                  image: AssetImage(
                    imageList,
                  ),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
