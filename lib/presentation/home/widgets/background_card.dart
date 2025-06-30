import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/colors/colors.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              colors: [
                Color.fromARGB(143, 0, 0, 0),
                Color.fromARGB(17, 0, 0, 0),
                Color.fromARGB(208, 0, 0, 0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
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
                CustomButtonWidget(title: "Info", icon: Icons.info_outline),
              ],
            ),
          ),
        ),
      ],
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
