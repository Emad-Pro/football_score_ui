import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widget/build_list_view_horizontal_latest_news.dart';
import 'widget/build_list_view_vertical_latest_news.dart';
import 'widget/lastest_news_text_title.dart';

class LatestNews extends StatelessWidget {
  const LatestNews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: CustomScrollView(
        slivers: [
          LatesNewsTextTitle(),
          BuildListViewHorizontalLatestNews(),
          BuildListViewVerticalLatesNews()
        ],
      ),
    );
  }
}
