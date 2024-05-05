import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_details/presentation/screens/competition_detail_screen.dart';

import '../../../../../../../../core/app_styles.dart';
import '../../../../../domain/entitis/comptition_model.dart';

class CompetitionTopPageBuildListTileItem extends StatelessWidget {
  const CompetitionTopPageBuildListTileItem(
      {super.key, required this.competitionModel});
  final CompetitionModel competitionModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const CompetitionDetailScreen()));
      },
      leading: Image.asset(competitionModel.countryFlags),
      title: Text(
        competitionModel.country,
        style: TextStyle(
            color: const Color(0xff5D5C64),
            fontSize: getResponsiveFontSize(context, fontSize: 16)),
      ),
      subtitle: Text(
        competitionModel.championsName,
        style: const TextStyle(color: Color(0xffB6B6B6)),
      ),
    );
  }
}
