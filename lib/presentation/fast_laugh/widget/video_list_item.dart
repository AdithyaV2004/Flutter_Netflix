import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/colors/colors.dart';
import 'package:flutter_netflix/core/constants.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.accents[index % Colors.accents.length]),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side mute button
                CircleAvatar(
                  // ignore: deprecated_member_use
                  backgroundColor: Colors.black.withOpacity(0.8),
                  radius: 30,
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: Icon(Icons.volume_off, size: 30),
                  ),
                ),

                //right side column
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 15,
                            offset: Offset(4, 2),
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                        ),
                      ),
                    ),
                    kHeight,
                    VideoActionsWidget(
                      icon: Icons.emoji_emotions,
                      title: "LOL",
                    ),
                    VideoActionsWidget(icon: Icons.add, title: "My List"),
                    VideoActionsWidget(icon: Icons.share, title: "Share"),
                    VideoActionsWidget(
                      icon: Icons.play_circle_outline_outlined,
                      title: "Play",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoActionsWidget extends StatelessWidget {
  const VideoActionsWidget({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          // ignore: deprecated_member_use
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 15,
                  offset: Offset(4, 2),
                ),
              ],
            ),
            child: Icon(icon, color: Colors.white, size: 30),
          ),
          Text(title, style: TextStyle(color: kWhiteColor, fontSize: 16)),
        ],
      ),
    );
  }
}
