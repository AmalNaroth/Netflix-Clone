import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home/widgets/custom_button.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      SizedBoxH10,
      Text("Friends"),
           SizedBoxH10,
           Text("Landing the lead in the school musical is a dream come true jodi, until the pressure sens her confidence -- and her relationship -- in to a tail spin"),
           SizedBoxH50,
           VideoWidget(),
           SizedBoxH10,
           Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             CustomButton(icon: CupertinoIcons.share, title:"Share",fontsize: 16,size: 25,),
                sizedBoxW10,
                CustomButton(icon: Icons.add, title: "My List",fontsize: 16,size: 25,),
                sizedBoxW10,
                 CustomButton(icon: CupertinoIcons.play, title: "Play",fontsize: 16,size: 25,),
                sizedBoxW10

           ],)

    ],);
  }
}