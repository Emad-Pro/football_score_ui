import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_page/presentation/screen/widget/competition_header_widget.dart';

import 'widget/competition_body_widget.dart';

class CompetitionScreen extends StatelessWidget {
  const CompetitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [CompetitionHeaderWidget(), CompetitionBodyWidget()],
    );
  }
}
