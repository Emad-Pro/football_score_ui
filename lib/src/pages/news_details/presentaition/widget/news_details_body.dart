import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/core/app_styles.dart';

import '../../../../../core/widget/build_tag_item.dart';
import '../../../news_page/domin/entitis/news_model.dart';

class NewsDetailsBody extends StatelessWidget {
  const NewsDetailsBody({
    super.key,
    required this.newsModel,
  });

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          children: [
            Text(
              newsModel.newsText,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 24)),
            ),
            Container(
              height: 35,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: newsModel.newsTag.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CustomTagItem(
                      text: newsModel.newsTag[index],
                    );
                  }),
            ),
            Text(
              newsModel.newsHour,
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 10),
                  color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Image.asset(newsModel.newsImage),
            ),
            if (newsModel.newsTextDetails != null)
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  newsModel.newsTextDetails!,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: getResponsiveFontSize(context, fontSize: 14),
                      fontWeight: FontWeight.w200),
                ),
              )
          ],
        ),
      ),
    );
  }
}
