import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(width: 40),
            Container(
              width: 130,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://c8.alamy.com/comp/2JD8RDR/hiccupposter-how-to-train-your-dragon-2010-2JD8RDR.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: -35,
          child: BorderedText(
            strokeWidth: 7,
            strokeColor: Colors.white,
            child: Text(
              "${index + 1}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 120,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
