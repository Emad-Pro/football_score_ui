import 'package:flutter/material.dart';

import 'widget/competition_details_appbar.dart';
import 'widget/competition_details_body.dart';
import 'widget/competition_details_header.dart';

class CompetitionDetailScreen extends StatelessWidget {
  const CompetitionDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        slivers: [
          CompetitionDetialsAppbar(),
          CompetitionDetialsHeader(),
          CompetitionDetailsBody(),
        ],
      ),
    );
  }
}
