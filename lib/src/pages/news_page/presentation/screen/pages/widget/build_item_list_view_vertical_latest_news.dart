import 'package:flutter/material.dart';

import '../../../../../../../core/app_styles.dart';
import '../../../../domin/entitis/news_model.dart';
import 'build_tag_news_list_view.dart';

class BuildItemListViewVerticalLatestNews extends StatelessWidget {
  const BuildItemListViewVerticalLatestNews(
      {super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xff1E1E1E),
            borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(newsModel.newsImage),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(newsModel.newsText),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      newsModel.newsHour,
                      style: TextStyle(
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 10),
                          color: const Color.fromARGB(255, 97, 97, 97)),
                    ),
                  ),
                  BuildTagNewsListView(
                    latestNews: newsModel.newsTag,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
