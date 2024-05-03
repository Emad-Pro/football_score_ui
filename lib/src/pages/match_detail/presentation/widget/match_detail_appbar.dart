import 'package:flutter/material.dart';

import '../../../../../core/app_styles.dart';

class MatchDetailAppBar extends StatelessWidget {
  const MatchDetailAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(Icons.share),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Icon(Icons.star),
        )
      ],
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            size: 16,
          )),
      centerTitle: true,
      title: Column(
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
