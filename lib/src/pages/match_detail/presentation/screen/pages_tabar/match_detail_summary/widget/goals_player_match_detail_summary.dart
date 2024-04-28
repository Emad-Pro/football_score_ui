import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoalsPlayerMatchDetailSummaryPage extends StatelessWidget {
  final String namePlayer;
  final String? assetPlayer;
  final String timeGoal;
  final MainAxisAlignment mainAxisAlignment;
  const GoalsPlayerMatchDetailSummaryPage(
      {super.key,
      required this.namePlayer,
      required this.timeGoal,
      required this.mainAxisAlignment,
      this.assetPlayer});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(namePlayer),
              if (assetPlayer != null)
                Text(
                  "Asst: $assetPlayer",
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SvgPicture.asset("assets/images/football.svg")),
          Text(
            "$timeGoal'",
            style: const TextStyle(
                fontWeight: FontWeight.w400, fontSize: 12, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
