import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/core/app_styles.dart';

class CustomTeam1VsTeam2 extends StatelessWidget {
  const CustomTeam1VsTeam2(
      {super.key, required this.teamLogo, required this.teamName});
  final String teamName;
  final String teamLogo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(width: 70, height: 70, teamLogo),
        SizedBox(
          width: 100,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              teamName,
              softWrap: true,
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 18)),
              maxLines: 2,
            ),
          ),
        )
      ],
    );
  }
}
