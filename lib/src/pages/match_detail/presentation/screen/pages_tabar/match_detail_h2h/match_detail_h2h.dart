import 'package:flutter/material.dart';

import 'widget/h2h_last_five_match_list_view.dart';
import 'widget/h2h_total_wins_header.dart';

class MatchDetailH2h extends StatelessWidget {
  const MatchDetailH2h({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [H2hTotalWinsHeader(), H2hLastFiveMatchListView()],
    );
  }
}
