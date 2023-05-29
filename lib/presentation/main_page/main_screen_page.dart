import 'package:flutter/material.dart';
import 'package:netflix/presentation/New&Hot/newhotscreen.dart';
import 'package:netflix/presentation/downloads/screen_dowloads.dart';
import 'package:netflix/presentation/fast_laugh/fast_laugh.dart';
import 'package:netflix/presentation/home/homescreen.dart';
import 'package:netflix/presentation/main_page/widgets/bottmnav.dart';
import 'package:netflix/presentation/search/searchscreen.dart';

class MainScreenPage extends StatelessWidget {
   const MainScreenPage({super.key});

  final screens= const[HomeScreen(),
   NewAndHotScreen(),
   FastLaughScreen(),
   SearchScreen(),
   DownloadScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context,int newIndex, child) {
        return screens[newIndex];
      },),
      bottomNavigationBar:const BottomNavbar(),
    );
  }
}