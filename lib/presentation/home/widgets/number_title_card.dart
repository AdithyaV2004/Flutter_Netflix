import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/home/widgets/number_card.dart';
import 'package:flutter_netflix/presentation/widgets/main_title.dart';

class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: "Top 10 Tv Shows In India Today"),
        kHeight10,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => NumberCard(index: index)),
          ),
        ),
      ],
    );
  }
}
