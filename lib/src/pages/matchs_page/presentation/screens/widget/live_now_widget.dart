import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/core/app_styles.dart';

class LiveNowWidget extends StatelessWidget {
  const LiveNowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.only(top: 15),
        child: Row(children: [
          Text(
            "Live Now",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: getResponsiveFontSize(
                  context,
                  fontSize: 22,
                )),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: const Text(
                "See More",
                style: TextStyle(color: Color(0xffF63D68)),
              ))
        ]),
      ),
    );
  }
}
