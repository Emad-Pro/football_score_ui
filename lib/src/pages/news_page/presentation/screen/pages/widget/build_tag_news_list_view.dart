import 'package:flutter/material.dart';

import 'build_tag_item.dart';

class BuildTagNewsListView extends StatelessWidget {
  const BuildTagNewsListView({super.key, required this.latestNews});

  final List<String> latestNews;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: latestNews.length,
          shrinkWrap: true,
          itemBuilder: (context, i) {
            return BuildTagItem(
              text: latestNews[i],
            );
          }),
    );
  }
}
