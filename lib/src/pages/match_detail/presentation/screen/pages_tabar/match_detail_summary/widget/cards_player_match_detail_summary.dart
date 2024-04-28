import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardsPalyerMatchDetailSummaryPage extends StatelessWidget {
  const CardsPalyerMatchDetailSummaryPage(
      {super.key,
      required this.namePlayer,
      required this.pathCardIcon,
      required this.timeCard});
  final String namePlayer;
  final String timeCard;
  final String pathCardIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            "$timeCard'",
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        SvgPicture.asset(pathCardIcon),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(namePlayer),
        )
      ],
    );
  }
}
