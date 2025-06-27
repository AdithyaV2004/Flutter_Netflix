import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/colors/colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Icon(Icons.cast, color: Colors.white, size: 30),
        kWidth,
        Container(width: 30, height: 30, color: Colors.blue),
        kWidth,
      ],
    );
  }
}
