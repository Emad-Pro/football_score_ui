import 'package:flutter/material.dart';

import '../../../../../../../core/app_styles.dart';

class LatesNewsTextTitle extends StatelessWidget {
  const LatesNewsTextTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        "Latest",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: getResponsiveFontSize(context, fontSize: 22)),
      ),
    );
  }
}
