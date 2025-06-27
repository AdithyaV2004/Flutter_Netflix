import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/colors/colors.dart';
import 'package:flutter_netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final List imageList = [
    "https://media.themoviedb.org/t/p/w440_and_h660_face/6WxhEvFsauuACfv8HyoVX6mZKFj.jpg",
    "https://media.themoviedb.org/t/p/w440_and_h660_face/7c5VBuCbjZOk7lSfj9sMpmDIaKX.jpg",
    "https://media.themoviedb.org/t/p/w440_and_h660_face/vqBmyAj0Xm9LnS1xe1MSlMAJyHq.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: "Downloads"),
      ),
      body: ListView(
        children: [
          const Row(
            children: [
              kWidth,
              Icon(Icons.settings, color: kWhiteColor),
              kWidth,
              Text("Smart Downloads"),
            ],
          ),
          const Text("Introducing Downloads for you"),
          const Text(
            "We will download a personalised selection of movies and shows for you, so there is always something to watch on your device",
          ),
          Container(
            width: size.width,
            height: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.4,
                  backgroundColor: Colors.blue,
                ),
                Container(
                  width: size.width * 0.4,
                  height: size.width * 0.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(imageList[0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: kButtonColorBlue,
            child: Text(
              "Set up",
              style: TextStyle(
                color: kWhiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: kButtonColorWhite,
            child: Text(
              "See what you can download",
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
