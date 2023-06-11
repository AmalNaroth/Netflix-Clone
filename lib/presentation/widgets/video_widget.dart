import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/const/const.dart';

class VideoWidget extends StatelessWidget {
   VideoWidget({
    super.key,
    required this.imagepath
  });
  String imagepath;
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image(
            image: NetworkImage("$baseurl$imagepath"),
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: CircleAvatar(
              child: Icon(CupertinoIcons.volume_off, color: kwhite),
              backgroundColor: kbalck.withOpacity(0.8),
            ),
          )
        ],
      );
      }
  }
