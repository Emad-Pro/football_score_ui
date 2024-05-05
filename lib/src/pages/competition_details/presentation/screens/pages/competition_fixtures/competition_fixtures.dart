import 'package:flutter/material.dart';

import '../../../../../../../core/app_styles.dart';

class CompetitionFixtures extends StatelessWidget {
  const CompetitionFixtures({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        children: [
          Text(
            "Matchweek 31",
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 18),
                fontWeight: FontWeight.w300),
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (context, index) {
                return const FixturesBuildMatchWeakItem();
              }),
        ],
      ),
    );
  }
}

class FixturesBuildMatchWeakItem extends StatelessWidget {
  const FixturesBuildMatchWeakItem({
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
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "\n15/4",
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xff5D5C64)),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/images/team1.png"),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(start: 8.0),
                    child: Text(
                      "teamName",
                      style: TextStyle(fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset("assets/images/team2.png"),
                  const Padding(
                    padding: EdgeInsetsDirectional.only(start: 8.0),
                    child: Text(
                      "teamName",
                      style: TextStyle(fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              "23.30",
              style: TextStyle(color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
