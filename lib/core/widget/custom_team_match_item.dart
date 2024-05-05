import 'package:flutter/material.dart';

class CustomTeamMatchItem extends StatelessWidget {
  const CustomTeamMatchItem({
    super.key,
    required this.logoTeam,
    required this.teamName,
    required this.teamScore,
  });
  final String logoTeam;
  final String teamName;
  final String teamScore;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(logoTeam),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 8.0),
            child: Text(
              teamName,
              style: const TextStyle(fontWeight: FontWeight.w100),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 8.0),
            child: Text(teamScore),
          ),
        ],
      ),
    );
  }
}
