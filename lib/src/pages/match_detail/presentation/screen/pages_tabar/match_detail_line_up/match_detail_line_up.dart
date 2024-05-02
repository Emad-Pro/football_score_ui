import 'package:flutter/material.dart';

import 'widget/subtitues_lineup.dart';
import 'widget/text_squad_lineup.dart';

class MatchDetailLineUp extends StatelessWidget {
  const MatchDetailLineUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1e1e1e),
      padding: const EdgeInsets.all(15.0),
      child: const SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextSquadLineUp(
              teamNameOne: "Nottingham Forest",
              teamSquadOne: "3-4-1-2",
            ),
            SubTituesLineUp()
          ],
        ),
      ),
    );
  }
}
