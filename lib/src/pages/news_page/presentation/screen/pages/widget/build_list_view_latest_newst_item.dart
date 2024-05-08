import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/news_details/presentaition/screen/news_details_screen.dart';

import '../../../../../../../core/app_styles.dart';
import '../../../../domin/entitis/news_model.dart';
import '../../../../../../../core/widget/build_tag_news_list_view.dart';

class BuildListViewLatestNewsItem extends StatelessWidget {
  const BuildListViewLatestNewsItem(
      {super.key, required this.newsModel, required this.index});
  final NewsModel newsModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) {
          return NewsDetailsScreen(newsModel: newsModel);
        }), (route) => true);
      },
      child: Container(
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
      ),
    );
  }
}
