import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/core/app_styles.dart';
import 'package:sports_score_clean_architecture/core/widget/custom_team1_vs_team2.dart';
import 'package:sports_score_clean_architecture/src/pages/match_detail/presentation/screen/match_detail_screen.dart';

class BuildItemTeamScoreWidget extends StatelessWidget {
  const BuildItemTeamScoreWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 42, 41, 41),
          borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset("assets/images/image6.png"),
              ),
              Text(
                "Premier League",
                style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 16),
                    color: Colors.grey[500]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomTeam1VsTeam2(
                teamName: "Nottingham Forest",
                teamLogo: "assets/images/team1.png",
              ),
              Text(
                "0 - 2",
                style: TextStyle(
                    fontSize: getResponsiveFontSize(context, fontSize: 26),
                    fontWeight: FontWeight.bold),
              ),
              const CustomTeam1VsTeam2(
                teamName: "Manchister United",
                teamLogo: "assets/images/team2.png",
              )
            ],
          ),
          const Spacer(),
          Container(
              width: 250,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              margin: const EdgeInsets.only(top: 15),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MatchDetailScreen()));
                },
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xffF63D68)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ))),
                child: const Text("Details"),
              ))
        ],
      ),
    );
  }
}
