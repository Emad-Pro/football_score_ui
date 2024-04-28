import 'package:flutter/material.dart';

import 'match_detail_screen_body.dart';

class MatchDetailScreen extends StatelessWidget {
  const MatchDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MatchDetailScreenBody(),
    );
  }
}
