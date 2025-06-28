import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_netflix/core/constants.dart';
import 'package:flutter_netflix/presentation/search/widget/search_idle.dart';
import 'package:flutter_netflix/presentation/search/widget/search_result_widget.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                // ignore: deprecated_member_use
                backgroundColor: Colors.grey.withOpacity(0.3),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                style: const TextStyle(color: Colors.white),
              ),
              kHeight,
              Expanded(child: SearchIdleWidget()), //both screens are necessary
              // Expanded(child: SearchResultWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
