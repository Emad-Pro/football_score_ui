import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabbarScorePage extends StatelessWidget {
  const TabbarScorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/image6.png"),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Premier League",
                  style: TextStyle(color: Color(0xffB6B6B6)),
                )
              ],
            ),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return BuildListViewScoreMatchs();
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class BuildListViewScoreMatchs extends StatelessWidget {
  const BuildListViewScoreMatchs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff1E1E1E),
          borderRadius: BorderRadius.circular(7)),
      margin: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "FT \n15/4",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff5D5C64)),
            ),
          ),
          const Flexible(
            child: Column(
              children: [
                TabbarScoreTeam(
                  logoTeam: "assets/images/team1.png",
                  teamName: "West Ham United",
                  teamScore: "4",
                ),
                TabbarScoreTeam(
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

class TabbarScoreTeam extends StatelessWidget {
  const TabbarScoreTeam({
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
