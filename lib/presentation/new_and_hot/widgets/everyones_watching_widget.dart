import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/colors/colors.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:flutter_netflix/presentation/widgets/video_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Text(
          "Death's Game",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight10,
        const Text(
          "Facing hardships and contemplating suicide after a series of setbacks, a man is confronted by Death and tasked with experiencing death over and over again through 13 other lives to earn the chance to live.",
          style: TextStyle(color: kGreyColor),
        ),
        SizedBox(height: 50),
        VideoWidget(
          imageURL:
              "https://m.media-amazon.com/images/M/MV5BNTEzYzM4NWUtMjZiYS00NzAyLTgwMzctMjBhNTYyMDA4YWFiXkEyXkFqcGc@._V1_.jpg",
        ),
        kHeight10,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget(
              icon: Icons.ios_share,
              title: "Share",
              iconSize: 20,
              textSize: 12,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: "My List",
              iconSize: 20,
              textSize: 12,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 20,
              textSize: 12,
            ),
            kWidth,
          ],
        ),
      ],
    );
  }
}
