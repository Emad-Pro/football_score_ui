import 'package:flutter/material.dart';

import '../../../../../core/app_styles.dart';
import '../../../../../core/widget/custom_appbar_back.dart';

class MatchDetailAppbar extends StatelessWidget {
  const MatchDetailAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbarBack(
      titleAppbar: Column(
        children: [
          Text(
            "Premire League",
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 16)),
          ),
          Text(
            "Today",
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 14),
                fontWeight: FontWeight.w200),
          )
        ],
      ),
    );
  }
}
