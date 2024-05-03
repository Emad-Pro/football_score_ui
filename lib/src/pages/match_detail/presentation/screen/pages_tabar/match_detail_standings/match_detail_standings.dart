import 'package:flutter/material.dart';
import 'widget/standings_color_id.dart';
import 'widget/standings_table_view.dart';

class MatchDetailStandings extends StatelessWidget {
  const MatchDetailStandings({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        StandingsTableView(),
        StandingsColorId(),
      ],
    );
  }
}
