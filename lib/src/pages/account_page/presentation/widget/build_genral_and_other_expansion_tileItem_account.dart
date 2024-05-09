// ignore_for_file: file_names

import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';
import 'build_list_tile_account.dart';
import 'build_switch_widget.dart';
import 'build_text_arrow_account.dart';

class BuildGenralAndOtherExpansionTileItemAccount extends StatelessWidget {
  const BuildGenralAndOtherExpansionTileItemAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ExpansionTileGroup(
          spaceBetweenItem: 10,
          children: [
            ExpansionTileItem(
              backgroundColor: const Color(0xff1E1E1E),
              initiallyExpanded: false,
              title: const Text('General'),
              textColor: const Color(0xffB6B6B6),
              iconColor: const Color(0xffB6B6B6),
              expendedBorderColor: Colors.transparent,
              children: [
                BuildListTileAccount(
                  title: "App Notifications",
                  triningWidget: BuildSwitchWidget(
                    onChanged: (val) {},
                  ),
                ),
                const Divider(),
                BuildListTileAccount(
                  title: "Dark Theme",
                  triningWidget: BuildSwitchWidget(
                    onChanged: (val) {},
                  ),
                ),
                const Divider(),
                const BuildListTileAccount(
                  title: "Filter Matches By",
                  triningWidget: BuildTextArrowAccount(
                    title: "League",
                  ),
                ),
                const Divider(),
                const BuildListTileAccount(
                  title: "Language",
                  triningWidget: BuildTextArrowAccount(
                    title: "English",
                  ),
                ),
              ],
            ),
            const ExpansionTileItem(
              backgroundColor: Color(0xff1E1E1E),
              initiallyExpanded: true,
              title: Text('Other'),
              textColor: Color(0xffB6B6B6),
              iconColor: Color(0xffB6B6B6),
              expendedBorderColor: Colors.transparent,
              children: [
                Center(
                  child: Text(
                    "This UI was implemented by Imad Younes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xffF63D68), fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
