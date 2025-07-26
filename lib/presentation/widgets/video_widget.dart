import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({super.key, required this.imageURL});

  final String imageURL;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image(image: NetworkImage(imageURL), fit: BoxFit.cover),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: CircleAvatar(
            // ignore: deprecated_member_use
            backgroundColor: Colors.black.withOpacity(0.8),
            radius: 20,
            child: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(Icons.volume_off, size: 20),
            ),
          ),
        ),
      ],
    );
  }
}
