import 'package:flutter/material.dart';

import '../widget/match_detail_appbar.dart';
import '../widget/match_detail_board_widget.dart';
import '../widget/match_detail_tabbar.dart';

class MatchDetailScreenBody extends StatelessWidget {
  const MatchDetailScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: NeverScrollableScrollPhysics(),
      slivers: [
        MatchDetailAppBar(),
        MatchDetailBoardWidget(),
        MatchDetailTabBar()
      ],
    );
  }
}
