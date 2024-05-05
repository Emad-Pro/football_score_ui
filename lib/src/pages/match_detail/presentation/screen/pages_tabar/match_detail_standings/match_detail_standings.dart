import 'package:flutter/material.dart';

import '../../../../../../../core/fake_data/standings_data.dart';

import 'widget/standings_color_id.dart';
import '../../../../../../../core/widget/custom_standings_widget/standings_table_view.dart';

class MatchDetailStandings extends StatelessWidget {
  const MatchDetailStandings({super.key});

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
