import 'package:flutter/material.dart';

import '../../../../../../../../core/app_styles.dart';

class TextHalfTimeWidget extends StatelessWidget {
  const TextHalfTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Half Time"),
        Text(
          "Nottingam Forest 0-1 Manchester United",
          style: TextStyle(
              color: Colors.grey,
              fontSize: getResponsiveFontSize(context, fontSize: 14)),
        ),
      ],
    );
  }
}
