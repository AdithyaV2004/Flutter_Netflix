import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/colors/colors.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/home/widgets/custom_button_widget.dart';
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
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 600,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(kMainImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 600,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.black54, Colors.black12],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomButtonWidget(title: "My List", icon: Icons.add),
                      _playButton(),
                      CustomButtonWidget(
                        title: "Info",
                        icon: Icons.info_outline,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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

  TextButton _playButton() {
    return TextButton.icon(
      style: ButtonStyle(
        // ignore: deprecated_member_use
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        // ignore: deprecated_member_use
        backgroundColor: MaterialStateProperty.all(kWhiteColor),
        iconColor: WidgetStateProperty.all(kBlackColor),
      ),
      onPressed: () {},
      label: Text(
        "Play",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: kBlackColor,
        ),
      ),

      icon: Icon(Icons.play_arrow, size: 30),
    );
  }
}
