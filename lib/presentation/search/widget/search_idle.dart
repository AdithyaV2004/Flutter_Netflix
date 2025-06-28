import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/colors/colors.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/search/widget/title.dart';

const String imageURL =
    "https://media.themoviedb.org/t/p/w710_and_h400_multi_faces/unthV1mq9llhEinIMPcCUImFodt.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: "Top Searches"),
        kHeight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) => const TopSearchItemTile(),
            separatorBuilder: (ctx, index) => kHeight,
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: screenWidth.width * 0.35,
          height: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageURL),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Text(
            "Fantastic 4",
            style: TextStyle(
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Icon(CupertinoIcons.play_circle, color: Colors.white, size: 50),
      ],
    );
  }
}
