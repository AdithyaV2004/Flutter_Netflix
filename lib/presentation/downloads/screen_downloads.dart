import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/colors/colors.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/widgets/app_bar_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [const _SmartDownloads(), Section2(), Section3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(title: "Downloads"),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx, index) => _widgetList[index],
        separatorBuilder: (ctx, index) => SizedBox(height: 16),
        itemCount: _widgetList.length,
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final List imageList = [
    "https://image.tmdb.org/t/p/w440_and_h660_face/7c5VBuCbjZOk7lSfj9sMpmDIaKX.jpg",
    "https://image.tmdb.org/t/p/w440_and_h660_face/vqBmyAj0Xm9LnS1xe1MSlMAJyHq.jpg",
    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/1QdXdRYfktUSONkl1oD5gc6Be0s.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kWhiteColor,
            fontSize: 25,
            fontFamily: GoogleFonts.roboto().fontFamily,
            fontWeight: FontWeight.w900,
          ),
        ),
        kHeight,
        const Text(
          "We will download a personalised selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        SizedBox(
          width: size.width,
          height: size.width * 0.9,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.35,
                // ignore: deprecated_member_use
                backgroundColor: Colors.grey.withOpacity(0.3),
              ),
              DownloadsImageWidget(
                isize: Size(size.width * 0.3, size.width * 0.5),
                imageList: imageList[0],
                angle: 20,
                margin: EdgeInsets.only(left: 170, top: 35),
              ),
              DownloadsImageWidget(
                isize: Size(size.width * 0.3, size.width * 0.5),
                imageList: imageList[1],
                angle: -20,
                margin: EdgeInsets.only(right: 170, top: 35),
              ),
              DownloadsImageWidget(
                isize: Size(size.width * 0.4, size.width * 0.55),
                imageList: imageList[2],
                margin: EdgeInsets.only(top: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(5),
            ),
            onPressed: () {},
            color: kButtonColorBlue,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Set up",
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        kHeight,
        SizedBox(
          width: 320,
          child: MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(5),
            ),
            onPressed: () {},
            color: kButtonColorWhite,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "See what you can download",
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Icon(Icons.settings, color: kWhiteColor),
        kWidth,
        Text("Smart Downloads"),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.isize,
    this.imgRadius = 10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size isize;
  final double imgRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          // margin: margin,
          width: isize.width,
          height: isize.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(imgRadius),
            image: DecorationImage(
              image: NetworkImage(imageList),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
