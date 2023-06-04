import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: AssetImage("assets/thelastkindom.jpg"),fit: BoxFit.cover,),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(child: Icon(CupertinoIcons.volume_off,color: kwhite),
          backgroundColor: kbalck.withOpacity(0.8),
          ),
        )
      ],
    );
  }
}