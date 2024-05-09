import 'package:flutter/material.dart';

import '../../../../../core/app_styles.dart';

class BuildTextArrowAccount extends StatelessWidget {
  const BuildTextArrowAccount({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title,
            style: TextStyle(
                color: const Color(0xffB6B6B6),
                fontSize: getResponsiveFontSize(context, fontSize: 16))),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 14,
        )
      ],
    );
  }
}
