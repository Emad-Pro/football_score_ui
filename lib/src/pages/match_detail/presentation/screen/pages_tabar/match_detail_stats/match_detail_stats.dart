import 'package:flutter/material.dart';

import 'widget/stats_line_stats_match.dart';
import 'widget/stats_team_logo.dart';

class MatchDetailStats extends StatelessWidget {
  const MatchDetailStats({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StatsTeamLogo(),
          StatsLineStatsMatch(
            titleText: "Shots",
            numTeam1: 6,
            numTeam2: 22,
          ),
          StatsLineStatsMatch(
            titleText: "Shots on Attempt",
            numTeam1: 0,
            numTeam2: 8,
          ),
          StatsLineStatsMatch(
            titleText: "Ball Possession ",
            numTeam1: 31,
            numTeam2: 69,
          ),
          StatsLineStatsMatch(
            titleText: "Pass",
            numTeam1: 281,
            numTeam2: 608,
          ),
          StatsLineStatsMatch(
            titleText: "Fouls",
            numTeam1: 9,
            numTeam2: 9,
          ),
          StatsLineStatsMatch(
            titleText: "Yellow Card",
            numTeam1: 2,
            numTeam2: 2,
          ),
          StatsLineStatsMatch(
            titleText: "Red Card",
            numTeam1: 0,
            numTeam2: 0,
          ),
          StatsLineStatsMatch(
            titleText: "Corners",
            numTeam1: 4,
            numTeam2: 9,
          ),
          StatsLineStatsMatch(
            titleText: "Offside",
            numTeam1: 1,
            numTeam2: 3,
          ),
        ],
      ),
    );
  }
}
