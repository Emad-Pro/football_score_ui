import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reorderable_tabbar/reorderable_tabbar.dart';

import '../../controller/cubit/competition_cubit.dart';

class CompetitionBodyWidget extends StatelessWidget {
  const CompetitionBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: BlocBuilder<CompetitionCubit, CompetitionState>(
        builder: (context, state) {
          final competitionCubit = BlocProvider.of<CompetitionCubit>(context);
          return DefaultTabController(
            length: competitionCubit.competitionTabbar.length,
            child: Column(
              children: [
                ReorderableTabBar(
                    indicator: const BoxDecoration(
                        color: Color(0xffF63D68), shape: BoxShape.rectangle),
                    buildDefaultDragHandles: false,
                    labelColor: Colors.white,
                    unselectedLabelColor: const Color(0xff5D5C64),
                    tabs: competitionCubit.competitionTabbar
                        .map((e) => Tab(
                              iconMargin: EdgeInsets.zero,
                              text: e,
                            ))
                        .toList(),
                    isScrollable: false,
                    indicatorWeight: 2,
                    onReorder: (oldIndex, newIndex) async {
                      competitionCubit.onReorder(oldIndex, newIndex);
                    }),
                Expanded(
                  child: TabBarView(
                    children: competitionCubit.tabBarPage.map((e) {
                      return e;
                    }).toList(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
