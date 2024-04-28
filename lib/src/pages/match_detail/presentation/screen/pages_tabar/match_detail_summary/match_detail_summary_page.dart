import 'package:flutter/material.dart';
import 'widget/first_time_widget.dart';
import 'widget/second_time_widget.dart';
import 'widget/text_half_time_wdiget.dart';

class MatchDetailSummaryPage extends StatelessWidget {
  const MatchDetailSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [SecondTimeWidget(), TextHalfTimeWidget(), FirstTimeWidget()],
    );
  }
}
