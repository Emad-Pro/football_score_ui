import 'package:flutter/material.dart';

import '../../../../../../core/app_styles.dart';

class CompetitionDetialsHeader extends StatelessWidget {
  const CompetitionDetialsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset("assets/images/competition_logo/en.png"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "England",
                style: TextStyle(
                  color: const Color(0xffB6B6B6),
                  fontSize: getResponsiveFontSize(
                    context,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Text(
              "Premier League",
              style: TextStyle(
                color: const Color(0xffB6B6B6),
                fontSize: getResponsiveFontSize(
                  context,
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
