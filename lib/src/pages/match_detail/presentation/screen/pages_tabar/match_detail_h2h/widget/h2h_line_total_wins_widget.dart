import 'package:flutter/material.dart';

import '../../../../../../../../core/method/convert_to_percent.dart';

class H2hLineTotalWinsWidget extends StatelessWidget {
  const H2hLineTotalWinsWidget(
      {super.key,
      required this.lineValueTeamTow,
      required this.lineValueTeamOne,
      required this.color,
      required this.backgroundColor});

  final double lineValueTeamTow;
  final double lineValueTeamOne;
  final Color color;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: LinearProgressIndicator(
              borderRadius: BorderRadius.circular(5),
              value: convertToPercent(lineValueTeamOne, lineValueTeamTow),
              color: color,
              backgroundColor: backgroundColor,
              minHeight: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(lineValueTeamOne.toInt().toString()),
          )
        ],
      ),
    );
  }
}
