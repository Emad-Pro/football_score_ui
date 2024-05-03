import 'package:flutter/material.dart';

import 'standings_color_named.dart';

class StandingsColorId extends StatelessWidget {
  const StandingsColorId({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        children: [
          StandingsColorNamed(
            text: "Champions League - Group Stage",
            color: Color(0xff2E90FA),
          ),
          StandingsColorNamed(
            text: "Europa League - Group Stage",
            color: Color(0xffFB6514),
          ),
          StandingsColorNamed(
            text: "Conference League - Qualification",
            color: Color(0xff12B76A),
          ),
          StandingsColorNamed(
            text: "Relegated - Championship",
            color: Color(0xffB42318),
          ),
        ],
      ),
    );
  }
}
