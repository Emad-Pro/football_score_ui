import 'package:flutter/material.dart';

import '../../../../../../../core/app_styles.dart';

class BuildTagItem extends StatelessWidget {
  const BuildTagItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          top: 15,
          left: 5,
        ),
        padding: const EdgeInsets.symmetric(vertical: 0.5, horizontal: 5),
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 97, 97, 97))),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getResponsiveFontSize(context, fontSize: 10),
              color: const Color.fromARGB(255, 97, 97, 97)),
        ));
  }
}
