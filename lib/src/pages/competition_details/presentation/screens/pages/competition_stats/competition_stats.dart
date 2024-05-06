import 'package:flutter/material.dart';

import 'widget/player_stats_table.dart';

import 'widget/stats_player_button_controll.dart';

class CompetitionStats extends StatelessWidget {
  const CompetitionStats({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [StatsPlayerButtonControll(), PlayerStatsTable()],
    );
  }
}
