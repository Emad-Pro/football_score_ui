import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widget/cometition_top_page_sliver_list_view.dart';
import 'widget/cometition_top_page_text_top_cometitions.dart';

class CompetitionTopPage extends StatelessWidget {
  const CompetitionTopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CometitionTopPageTextTopCometitions(),
        CometitionTopPageSliverListView()
      ],
    );
  }
}
