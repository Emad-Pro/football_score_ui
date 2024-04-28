import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/core/app_styles.dart';

import '../../../../../core/widget/custom_team1_vs_team2.dart';

class MatchDetailBoardWidget extends StatelessWidget {
  const MatchDetailBoardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 30, 30, 30),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset("assets/images/image6.png"),
              ),
              Text(
                "Premier League",
                style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 16),
                    color: Colors.grey[500]),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomTeam1VsTeam2(
                  teamName: "Nottingham Forest",
                  teamLogo: "assets/images/team1.png",
                ),
                Text(
                  "0 - 2",
                  style: TextStyle(
                      fontSize: getResponsiveFontSize(context, fontSize: 26),
                      fontWeight: FontWeight.bold),
                ),
                const CustomTeam1VsTeam2(
                  teamName: "Manchister United",
                  teamLogo: "assets/images/team2.png",
                )
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Antony 32'",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 16)),
                    ),
                    Text(
                      "Diogo Dalot 76'",
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 16)),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
