import 'package:flutter/material.dart';

import 'h2h_line_total_wins_widget.dart';

class H2hMatchDetailTotalMatchs extends StatelessWidget {
  const H2hMatchDetailTotalMatchs(
      {super.key,
      required this.imagePath,
      required this.lineValueTeamOne,
      required this.lineValueTeamTow,
      required this.isFirstTeam});
  final String imagePath;
  final double lineValueTeamOne;
  final double lineValueTeamTow;
  final bool isFirstTeam;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Image.asset(imagePath),
          ),
          if (isFirstTeam)
            H2hLineTotalWinsWidget(
                backgroundColor: const Color(0xffD2D2D2),
                color: const Color(0xffF63D68),
                lineValueTeamTow: lineValueTeamTow,
                lineValueTeamOne: lineValueTeamOne),
          if (!isFirstTeam)
            H2hLineTotalWinsWidget(
                color: const Color(0xff3A3A3A),
                backgroundColor: const Color(0xffD2D2D2),
                lineValueTeamTow: lineValueTeamOne,
                lineValueTeamOne: lineValueTeamTow),
        ],
      ),
    );
  }
}
