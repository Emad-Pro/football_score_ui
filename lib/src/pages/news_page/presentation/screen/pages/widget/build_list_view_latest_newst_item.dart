import 'package:flutter/material.dart';

import '../../../../../../../core/app_styles.dart';
import '../../../../domin/entitis/news_model.dart';
import 'build_tag_news_list_view.dart';

class BuildListViewLatestNewsItem extends StatelessWidget {
  const BuildListViewLatestNewsItem(
      {super.key, required this.newsModel, required this.index});
  final NewsModel newsModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff1E1E1E)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            newsModel.newsImage,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BuildTagNewsListView(
                latestNews: newsModel.newsTag,
              ),
              Text(
                newsModel.newsHour,
                style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 10),
                    color: Colors.grey),
              )
            ],
          ),
          Container(
              width: 200,
              margin: const EdgeInsets.only(
                top: 15,
                left: 15,
              ),
              child: Text(
                newsModel.newsText,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ))
        ],
      ),
    );
  }
}
