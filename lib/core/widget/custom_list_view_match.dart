import 'package:flutter/material.dart';

import 'custom_team_match_item.dart';

class CustomListViewMatchItem extends StatelessWidget {
  const CustomListViewMatchItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff1E1E1E),
          borderRadius: BorderRadius.circular(7)),
      margin: const EdgeInsets.only(top: 15),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "FT \n15/4",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff5D5C64)),
            ),
          ),
          Flexible(
            child: Column(
              children: [
                CustomTeamMatchItem(
                  logoTeam: "assets/images/team1.png",
                  teamName: "West Ham United",
                  teamScore: "4",
                ),
                CustomTeamMatchItem(
                  logoTeam: "assets/images/team2.png",
                  teamName: "Manchister United",
                  teamScore: "4",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
