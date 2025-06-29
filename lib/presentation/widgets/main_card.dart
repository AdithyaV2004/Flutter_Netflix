import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/constants.dart';

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: 130,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: const DecorationImage(
            image: NetworkImage(
              "https://creativereview.imgix.net/content/uploads/2023/12/Oppenheimer.jpg?auto=compress,format&q=60&w=1263&h=2000",
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
