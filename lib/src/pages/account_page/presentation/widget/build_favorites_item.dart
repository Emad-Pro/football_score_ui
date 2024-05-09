import 'package:flutter/material.dart';

import '../../../../../core/app_styles.dart';

class BuildFavoritesItem extends StatelessWidget {
  const BuildFavoritesItem(
      {super.key, required this.titleText, required this.value});
  final String titleText;
  final int value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          titleText,
          style: const TextStyle(color: Color(0xff5D5C64)),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          value.toString(),
          style:
              TextStyle(fontSize: getResponsiveFontSize(context, fontSize: 22)),
        )
      ],
    );
  }
}
