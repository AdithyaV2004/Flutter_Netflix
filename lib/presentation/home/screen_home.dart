import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/home/widgets/background_card.dart';
import 'package:flutter_netflix/presentation/home/widgets/number_title_card.dart';
import 'package:flutter_netflix/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  get homeTitle => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
    );
  }
}
