import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/New&Hot/widgets/commingsoon.dart';
import 'package:netflix/presentation/New&Hot/widgets/everyonewatching.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(90),
              child: AppBar(
                elevation: 0,
                title: const Text(
                  "New & Hot",
                  style: TextStyle(color: Colors.white),
                ),
                actions: [
                  const Icon(
                    Icons.notifications,
                    size: 30,
                    color: Colors.white,
                  ),
                  sizedBoxW10,
                  Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: AssetImage("assets/usericon.png"))),
                  ),
                  sizedBoxW10,
                ],
                bottom: TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius10),
                  unselectedLabelColor: Colors.white,
                  labelColor: Colors.black,
                  labelStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                  tabs: [
                    Tab(
                      text: "🍿Comming Soon",
                    ),
                    Tab(
                      text: "🔥Everyone\'s Watching ",
                    ),
                    Tab(
                      text: "🎮 Games",
                    )
                  ],
                ),
              )),
          body: TabBarView(children: [
            Visibility(
              child: _buildCommingSoon("Comming soon", context)),
            Visibility(child: _buildEveryonesWatch("EveryOne watch")),
            Visibility(child: _buildGames("Games"))
          ])),
    );
  }

  Widget _buildCommingSoon(String title, BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return CommingSoonWidget(index: index,);
      },
    );
  }

  Widget _buildEveryonesWatch(String title) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return EveryOnesWatchingWidget(index: index,);
      },
    );
  }

  Widget _buildGames(String title) {
    return Center(
      child: Text(title),
    );
  }
}
