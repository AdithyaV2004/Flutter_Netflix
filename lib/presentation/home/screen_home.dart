import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/home/widgets/background_card.dart';
import 'package:flutter_netflix/presentation/home/widgets/number_title_card.dart';
import 'package:flutter_netflix/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  get homeTitle => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, bool scroll, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    BackgroundCard(),
                    MainTitleCard(homeTitle: "Released in the Past Year"),
                    kHeight10,
                    MainTitleCard(homeTitle: "Trending Now"),
                    kHeight10,
                    NumberTitleCard(),
                    MainTitleCard(homeTitle: "Tense Dramas"),
                    kHeight10,
                    MainTitleCard(homeTitle: "South Indian Cinema"),
                  ],
                ),
                scrollNotifier.value
                    ? AnimatedContainer(
                        duration: Duration(milliseconds: 5000),
                        width: double.infinity,
                        height: 90,
                        // ignore: deprecated_member_use
                        color: Colors.black.withOpacity(0.3),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25),
                                    child: Image(
                                      image: NetworkImage(
                                        "https://yt3.googleusercontent.com/CvgBA1ypUZNxOjiCX0l1V2FbAm7oSDPZE4YkMvkpT_4iLXQ3IXWVtBgWnznHxgtcUoj50TXqZA=s900-c-k-c0x00ffffff-no-rj",
                                      ),
                                      width: 40,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                Icon(Icons.cast, color: Colors.white, size: 30),
                                kWidth,
                                SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Image(
                                    image: NetworkImage(
                                      "https://wallpapers.com/images/featured/netflix-profile-pictures-w3lqr61qe57e9yt8.jpg",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("TV Shows", style: kHomeTitleText),
                                Text("Movies", style: kHomeTitleText),
                                Text("Categories", style: kHomeTitleText),
                              ],
                            ),
                          ],
                        ),
                      )
                    : kHeight10,
              ],
            ),
          );
        },
      ),
    );
  }
}
