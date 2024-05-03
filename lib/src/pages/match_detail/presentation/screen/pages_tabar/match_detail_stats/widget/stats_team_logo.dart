import 'package:flutter/material.dart';

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
