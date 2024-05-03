import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/screens/widget/build_item_team_score_widget.dart';

class ListViewHorizontalLiveNow extends StatelessWidget {
  const ListViewHorizontalLiveNow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        width: 200,
        height: MediaQuery.sizeOf(context).height * 0.2,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (context, index) {
              return const BuildItemTeamScoreWidget();
            }),
      ),
    );
  }
}
