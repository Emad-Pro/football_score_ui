import 'package:flutter/material.dart';

import '../../../../../../../../core/method/convert_to_percent.dart';

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
