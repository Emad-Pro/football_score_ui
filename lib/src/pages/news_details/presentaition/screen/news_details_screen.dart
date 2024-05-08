import 'package:flutter/material.dart';

import 'package:sports_score_clean_architecture/src/pages/news_page/domin/entitis/news_model.dart';

import '../widget/news_details_appbar_widget.dart';
import '../widget/news_details_body.dart';

class NewsDetailsScreen extends StatelessWidget {
  const NewsDetailsScreen({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          const NewsDetailsAppbarWidget(),
          NewsDetailsBody(newsModel: newsModel)
        ],
      )),
    );
  }
}
