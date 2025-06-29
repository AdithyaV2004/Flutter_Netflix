import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/widgets/main_card.dart';
import 'package:flutter_netflix/presentation/widgets/main_title.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({super.key, required this.homeTitle});

  final String homeTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: homeTitle),
        kHeight10,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) => const MainCard()),
          ),
        ),
      ],
    );
  }
}
