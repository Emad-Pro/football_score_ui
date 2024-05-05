import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/core/app_styles.dart';

import '../../../../../../core/widget/custom_appbar_back.dart';

class CompetitionDetialsAppbar extends StatelessWidget {
  const CompetitionDetialsAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppbarBack(
      titleAppbar: Text(
        "Competition",
        style:
            TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 18)),
      ),
    );
  }
}
