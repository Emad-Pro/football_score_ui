import 'package:flutter/material.dart';

import '../../../../../core/app_styles.dart';

class BuildListTileAccount extends StatelessWidget {
  const BuildListTileAccount(
      {super.key,
      required this.triningWidget,
      required this.title,
      this.onTap});
  final String title;
  final Widget triningWidget;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: TextStyle(
                fontSize: getResponsiveFontSize(context, fontSize: 16)),
          ),
          trailing: triningWidget,
        ),
      ],
    );
  }
}
