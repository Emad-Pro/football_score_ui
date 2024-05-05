import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/core/app_styles.dart';

import '../../../../../../../core/widget/custom_list_view_match.dart';

class CompetitionResults extends StatelessWidget {
  const CompetitionResults({super.key});

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
                return const CustomListViewMatchItem();
              }),
        ],
      ),
    );
  }
}
