import 'package:flutter/material.dart';

import '../../../../../core/app_styles.dart';
import 'build_favorites_item.dart';

class AccountHeaderFavorites extends StatelessWidget {
  const AccountHeaderFavorites({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Favorites",
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 23),
                  color: const Color(0xffB6B6B6)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: const Color(0xff1E1E1E),
                  borderRadius: BorderRadius.circular(12)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BuildFavoritesItem(
                    titleText: "Team",
                    value: 2,
                  ),
                  BuildFavoritesItem(
                    titleText: "Competitions",
                    value: 4,
                  ),
                  BuildFavoritesItem(
                    titleText: "Player",
                    value: 4,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
