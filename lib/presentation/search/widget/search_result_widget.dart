import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/search/widget/title.dart';

const imageURL =
    "https://image.tmdb.org/t/p/w440_and_h660_face/vqBmyAj0Xm9LnS1xe1MSlMAJyHq.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Movies & TV"),
        kHeight10,
        Expanded(
          child: GridView.count(
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            shrinkWrap: true,
            crossAxisCount: 3,
            childAspectRatio: 1 / 1.5,
            children: List.generate(20, (index) {
              return MainCard();
            }),
          ),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(image: NetworkImage(imageURL)),
      ),
    );
  }
}
