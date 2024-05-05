import 'package:flutter/material.dart';

import '../../../../../../core/app_styles.dart';

class CompetitionHeaderWidget extends StatelessWidget {
  const CompetitionHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Browse Competition",
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 25)),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: const Color(0xff3A3A3A),
                  borderRadius: BorderRadius.circular(10)),
              child: const Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Color(0xffB6B6B6),
                  ),
                  Text(
                    "  Search for competition, club... ",
                    style: TextStyle(color: Color(0xffB6B6B6)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
