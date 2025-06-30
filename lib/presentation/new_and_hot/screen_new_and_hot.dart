import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/colors/colors.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/new_and_hot/widgets/coming_soon_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: AppBar(
            elevation: 0,
            title: const Text(
              "New & Hot",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
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
            bottom: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.center,
              unselectedLabelColor: kWhiteColor,
              labelColor: kBlackColor,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                color: kWhiteColor,
                borderRadius: kRadius30,
              ),
              tabs: [
                Tab(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text("🍿 Coming Soon"),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text("👀 Everyone's watching"),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [_buildComingSoon(context), _buildEveryonesWatchin()],
        ),
      ),
    );
  }

  Widget _buildComingSoon(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) {
        return const ComingSoonWidget();
      },
    );
  }

  final String newAndHotTempImage =
      "https://assets.aboutamazon.com/0b/b3/5062c8934e5e86cea0fd86c3f097/theboys-7wildestmoments-hero-v2.jpg";

  Widget _buildEveryonesWatchin() {
    return SizedBox();
  }
}
