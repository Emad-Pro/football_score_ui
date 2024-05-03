import 'package:flutter/material.dart';

import '../../../../../../../../core/app_styles.dart';

import 'h2h_match_detail_total_matchs.dart';

class H2hTotalWinsHeader extends StatelessWidget {
  const H2hTotalWinsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Text(
                "12 Matches",
                style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 28)),
              )),
              const Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Total Wins"),
                  H2hMatchDetailTotalMatchs(
                    imagePath: "assets/images/team1.png",
                    lineValueTeamOne: 1,
                    lineValueTeamTow: 9,
                    isFirstTeam: true,
                  ),
                  H2hMatchDetailTotalMatchs(
                    lineValueTeamOne: 1,
                    lineValueTeamTow: 9,
                    imagePath: "assets/images/team2.png",
                    isFirstTeam: false,
                  ),
                  Text("2 Draws"),
                ],
              )),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Divider(),
          )
        ],
      ),
    );
  }
}
