import 'package:flutter/material.dart';

import '../../../../../core/app_styles.dart';

class AccountAppbar extends StatelessWidget {
  const AccountAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        "My Account",
        style:
            TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 22)),
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
