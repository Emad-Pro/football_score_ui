import 'package:flutter/material.dart';

import '../../../../../../../core/method/convert_to_percent.dart';

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

class StatsLineStatsMatch extends StatelessWidget {
  const StatsLineStatsMatch(
      {super.key,
      required this.numTeam1,
      required this.numTeam2,
      required this.titleText});
  final double numTeam1;
  final double numTeam2;
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(numTeam1.toInt().toString()),
            Text(titleText),
            Text(numTeam2.toInt().toString())
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(5),
                  value: convertToPercent(numTeam1, numTeam2),
                  backgroundColor: const Color(0xffD2D2D2),
                  color: const Color(0xffF63D68),
                  minHeight: 10,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(5),
                  value: convertToPercent(numTeam2, numTeam1),
                  color: const Color(0xff3A3A3A),
                  backgroundColor: const Color(0xffD2D2D2),
                  minHeight: 10,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class StatsTeamLogo extends StatelessWidget {
  const StatsTeamLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Image.asset("assets/images/team1.png"),
            const Spacer(),
            Image.asset("assets/images/team2.png")
          ],
        ),
        Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: const Color(0xff3a3a3a),
              borderRadius: BorderRadius.circular(5)),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Full Time",
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
              Icon(Icons.keyboard_arrow_down)
            ],
          ),
        )
      ],
    );
  }
}
