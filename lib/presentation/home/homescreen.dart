import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/domain/popular/polular_functions.dart';
import 'package:netflix/domain/top_rated/top_rated_functions.dart';
import 'package:netflix/domain/trending/trending_functions.dart';
import 'package:netflix/presentation/home/widgets/background_card.dart';
import 'package:netflix/presentation/home/widgets/number_title_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> ScrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
       // future: getPopularMovies(),
        builder: (context, snapshot) {
          return Scaffold(
            body: ValueListenableBuilder(
                valueListenable: ScrollNotifier,
                builder: (context, value, child) {
                  return NotificationListener<UserScrollNotification>(
                    onNotification: (notification) {
                      final ScrollDirection direction = notification.direction;
                      print(ScrollNotifier.value.toString());
                      if (direction == ScrollDirection.reverse) {
                        ScrollNotifier.value = false;
                      } else if (direction == ScrollDirection.forward) {
                        ScrollNotifier.value = true;
                      }
                      return true;
                    },
                    child: Stack(
                      children: [
                        ListView(
                          children:  [
                            BackgroundCard(),
                             MainTitleCard(title: "Relesed in the Past Year",
                             showHomeMovies: getImagePopular,
                             imagepath:"posterPath"),
                            MainTitleCard(
                              title: "Trending Now",
                              showHomeMovies: getImageTrending,
                              imagepath: "poster_path",
                            ),
                            NumberTitleCard(),
                            MainTitleCard(
                              title: "Tense Dramas",
                              showHomeMovies:getImageTopRated ,
                              imagepath: "posterPath",
                            ),
                            MainTitleCard(
                              title: "South Indian Cinemas",
                              showHomeMovies: getImagePopular,
                              imagepath: "posterPath",

                            ),

                          ],
                        ),
                        ScrollNotifier.value == true
                            ? AnimatedContainer(
                                duration: const Duration(milliseconds: 1000),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(.3),
                                ),
                                height: 100,
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/netflixicon.png",
                                          height: 60,
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.cast,
                                          color: kwhite,
                                          size: 35,
                                        ),
                                        sizedBoxW10,
                                        Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  "assets/usericon.png",
                                                ),
                                              )),
                                        ),
                                        sizedBoxW10
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Tv shows",
                                          style: textstyle,
                                        ),
                                        Text("Movies", style: textstyle),
                                        Text("Categories", style: textstyle)
                                      ],
                                    )
                                  ],
                                ),
                              )
                            : SizedBoxH10
                      ],
                    ),
                  );
                }),
          );
        });
  }
}
