import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/screens/widget/custom_appbar.dart';

import '../widget/build_tabbar_news_body.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [CustomAppbar(), BuildTabbarNewsBody()],
    );
  }
}
