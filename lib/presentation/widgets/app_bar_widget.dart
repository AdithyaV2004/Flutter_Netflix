import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/constants.dart';

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
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
        ),
        Spacer(),
        Icon(Icons.cast, color: Colors.white, size: 30),
        kWidth,
        SizedBox(
          width: 30,
          height: 30,
          child: Image(
            image: NetworkImage(
              "https://wallpapers.com/images/featured/netflix-profile-pictures-w3lqr61qe57e9yt8.jpg",
            ),
          ),
        ),
        kWidth,
      ],
    );
  }
}
