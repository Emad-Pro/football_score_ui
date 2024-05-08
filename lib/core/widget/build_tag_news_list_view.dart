import 'package:flutter/material.dart';

import 'build_tag_item.dart';

class BuildTagNewsListView extends StatelessWidget {
  const BuildTagNewsListView({super.key, required this.latestNews, this.width});
  final double? width;
  final List<String> latestNews;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: width ?? 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: latestNews.length,
          shrinkWrap: true,
          itemBuilder: (context, i) {
            return CustomTagItem(
              text: latestNews[i],
            );
          }),
    );
  }
}
