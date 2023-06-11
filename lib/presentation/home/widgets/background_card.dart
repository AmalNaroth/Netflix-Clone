import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/const/const.dart';
import 'package:netflix/domain/toptvshows/toptvshows_functions.dart';
import 'package:netflix/presentation/home/widgets/custom_button.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: gettoptvshows(),
      builder: (context, snapshot) {
        String? imagepath=snapshot.data?[12].posterPath;
        return Stack(
        children: [
          Container(
            height: 600,
            decoration:  BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("$baseurl$imagepath"))),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(icon: Icons.add, title: "My List"),
                  _playButton(),
                  CustomButton(icon: Icons.info, title: " Info"),
                ],
              ),
            ),
          )
        ],
      );
      }
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.white),
          minimumSize: const MaterialStatePropertyAll(Size(110.0, 40.0)),
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))),
      icon: const Icon(
        CupertinoIcons.play_fill,
        color: kbalck,
      ),
      label: const Text(
        "Play",
        style: TextStyle(color: kbalck),
      ),
    );
  }
}
