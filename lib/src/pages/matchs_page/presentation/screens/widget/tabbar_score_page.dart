import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../../core/widget/custom_list_view_match.dart';

class TabbarScorePage extends StatelessWidget {
  const TabbarScorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset("assets/images/image6.png"),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Premier League",
                  style: TextStyle(color: Color(0xffB6B6B6)),
                )
              ],
            ),
            SizedBox(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return const CustomListViewMatchItem();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
