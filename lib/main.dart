import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/main_page/main_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        scaffoldBackgroundColor: bgcolor,
        useMaterial3: true,
        textTheme:const TextTheme(bodyLarge:TextStyle(color: Colors.white),
        bodyMedium: TextStyle(color: Colors.white),
        )
      ),
      home:const  MainScreenPage(),
    );
  }
}
