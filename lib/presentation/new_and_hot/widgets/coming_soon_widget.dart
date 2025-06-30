import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/colors/colors.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/home/widgets/custom_button_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 60,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text("FEB", style: TextStyle(fontSize: 20, color: kGreyColor)),
              Text(
                "11",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Image(
                        image: NetworkImage(
                          "https://assets.aboutamazon.com/0b/b3/5062c8934e5e86cea0fd86c3f097/theboys-7wildestmoments-hero-v2.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: CircleAvatar(
                        // ignore: deprecated_member_use
                        backgroundColor: Colors.black.withOpacity(0.8),
                        radius: 20,
                        child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: Icon(Icons.volume_off, size: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                kHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "The Boys",
                      style: TextStyle(
                        fontFamily: GoogleFonts.permanentMarker().fontFamily,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        CustomButtonWidget(
                          icon: Icons.notifications_none_outlined,
                          title: "Remind me",
                          iconSize: 20,
                          textSize: 12,
                        ),
                        kWidth,
                        CustomButtonWidget(
                          icon: Icons.info_outline,
                          title: "Info",
                          iconSize: 20,
                          textSize: 12,
                        ),
                        kWidth,
                      ],
                    ),
                  ],
                ),
                kHeight10,
                Text(
                  "Coming next Friday",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                kHeight10,
                Row(
                  children: [
                    SizedBox(
                      height: 15,
                      width: 15,
                      child: Image(
                        image: NetworkImage(
                          "https://yt3.googleusercontent.com/CvgBA1ypUZNxOjiCX0l1V2FbAm7oSDPZE4YkMvkpT_4iLXQ3IXWVtBgWnznHxgtcUoj50TXqZA=s900-c-k-c0x00ffffff-no-rj",
                        ),
                      ),
                    ),
                    SizedBox(width: 2),
                    Text(
                      "FILM",
                      style: TextStyle(
                        letterSpacing: 4,
                        fontSize: 10,
                        color: const Color.fromARGB(154, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
                kHeight10,
                Text(
                  "The Boys",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                kHeight10,
                const Text(
                  "A group of vigilantes set out to take down corrupt superheroes who abuse their superpowers.",
                  style: TextStyle(color: kGreyColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
