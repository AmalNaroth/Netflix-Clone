import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/const/const.dart';
import 'package:netflix/domain/popular/polular_functions.dart';

class VideoListItem extends StatelessWidget {
  const VideoListItem({
    super.key,
    this.index,
  });
  final index;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getImagePopular(),
      builder: (context, snapshot) {
        String? imagepath=snapshot.data?[index].posterPath;
        return  Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.accents[index % Colors.accents.length],
              image: DecorationImage(image: NetworkImage("$baseurl$imagepath"),fit:BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //left side
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: kbalck.withOpacity(0.5),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.volume_mute,
                            color: Colors.white,
                            size: 30,
                          ))),
    
                  //right side
    
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("assets/travelers.jpg"),
                        ),
                      ),
                      VideoActionWidget(title: "LOL", icon: Icons.emoji_emotions),
                      VideoActionWidget(title: "My list", icon: Icons.add),
                      VideoActionWidget(title: "Share", icon: Icons.share),
                      VideoActionWidget(
                          title: "Play", icon: Icons.play_circle_fill)
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      );
      }
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const VideoActionWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: kwhite,
            size: 30,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
    );
  }
}
