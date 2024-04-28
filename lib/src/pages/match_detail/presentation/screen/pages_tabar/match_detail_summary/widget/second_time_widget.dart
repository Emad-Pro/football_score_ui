import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/match_detail/presentation/screen/pages_tabar/match_detail_summary/widget/cards_player_match_detail_summary.dart';
import 'package:sports_score_clean_architecture/src/pages/match_detail/presentation/screen/pages_tabar/match_detail_summary/widget/goals_player_match_detail_summary.dart';
import 'package:sports_score_clean_architecture/src/pages/match_detail/presentation/screen/pages_tabar/match_detail_summary/widget/swap_player_match_detail_summary.dart';

import '../../../../../domain/model/swap_player_model.dart';

class SecondTimeWidget extends StatelessWidget {
  const SecondTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xff1E1E1E),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          SwapPlayerMatchDetailSummaryPage(
            swapPlayerModel: SwapPlayerModel(
              namePlayerIn: "Fred",
              namePlayerOut: "C.Eriksen",
            ),
            timeSwap: "76",
            mainAxisAlignment: MainAxisAlignment.end,
          ),
          const GoalsPlayerMatchDetailSummaryPage(
            mainAxisAlignment: MainAxisAlignment.end,
            namePlayer: "Dalot",
            assetPlayer: "Ronaldo",
            timeGoal: "88",
          ),
          const CardsPalyerMatchDetailSummaryPage(
            pathCardIcon: "assets/images/Vector@2x.svg",
            namePlayer: "N.Williams",
            timeCard: "67",
          ),
          SwapPlayerMatchDetailSummaryPage(
            mainAxisAlignment: MainAxisAlignment.start,
            swapPlayerModel: SwapPlayerModel(
                namePlayerIn: "S.Surridge", namePlayerOut: "T.Awoniyi"),
            timeSwap: "65",
          )
        ],
      ),
    );
  }
}
