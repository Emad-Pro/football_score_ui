import 'package:flutter/material.dart';

import '../../../../../../../core/fake_data/standings_data.dart';
import '../../../../../../../core/widget/custom_standings_widget/standings_table_view.dart';

import '../../../../../match_detail/presentation/screen/pages_tabar/match_detail_standings/widget/standings_color_id.dart';

class CompetitionStandings extends StatelessWidget {
  const CompetitionStandings({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        StandingsTableView(
          standingsList: standingsClub,
        ),
        const StandingsColorId(),
      ],
    );
  }
}
