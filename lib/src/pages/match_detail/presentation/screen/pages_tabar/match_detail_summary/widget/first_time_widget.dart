import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/match_detail/presentation/screen/pages_tabar/match_detail_summary/widget/cards_player_match_detail_summary.dart';
import 'package:sports_score_clean_architecture/src/pages/match_detail/presentation/screen/pages_tabar/match_detail_summary/widget/goals_player_match_detail_summary.dart';

class FirstTimeWidget extends StatelessWidget {
  const FirstTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xff1E1E1E),
          borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [
          GoalsPlayerMatchDetailSummaryPage(
            mainAxisAlignment: MainAxisAlignment.end,
            namePlayer: "Antonty",
            timeGoal: "32",
          ),
          CardsPalyerMatchDetailSummaryPage(
            timeCard: "3",
            namePlayer: "H.Maguire",
            pathCardIcon: "assets/images/Vector@2x.svg",
          )
        ],
      ),
    );
  }
}
