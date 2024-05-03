import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/screens/widget/custom_appbar.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/screens/widget/date_selection_widget.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/screens/widget/list_view_horizontal_live_now.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/screens/widget/live_now_widget.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/screens/widget/tabbar_matchs_screen.dart';

class MatchsPage extends StatelessWidget {
  const MatchsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: const CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: [
            CustomAppbar(),
            DateSelectionWidget(),
            LiveNowWidget(),
            ListViewHorizontalLiveNow(),
            TabbarHomeScreen()
          ],
        ),
      ),
    );
  }
}
