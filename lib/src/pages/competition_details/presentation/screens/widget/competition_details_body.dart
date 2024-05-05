import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reorderable_tabbar/reorderable_tabbar.dart';

import '../../controller/cubit/competition_details_cubit.dart';

class CompetitionDetailsBody extends StatelessWidget {
  const CompetitionDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: BlocProvider(
        create: (context) => CompetitionDetailsCubit(),
        child: BlocBuilder<CompetitionDetailsCubit, CompetitionDetailsState>(
          builder: (context, state) {
            final competitionDetailsCubit =
                BlocProvider.of<CompetitionDetailsCubit>(context);
            return DefaultTabController(
              length: competitionDetailsCubit.competitionTabbar.length,
              child: Column(
                children: [
                  ReorderableTabBar(
                      indicator: const BoxDecoration(
                          color: Color(0xffF63D68), shape: BoxShape.rectangle),
                      buildDefaultDragHandles: false,
                      labelColor: Colors.white,
                      unselectedLabelColor: const Color(0xff5D5C64),
                      tabs: competitionDetailsCubit.competitionTabbar
                          .map((e) => Tab(
                                iconMargin: EdgeInsets.zero,
                                text: e,
                              ))
                          .toList(),
                      isScrollable: false,
                      indicatorWeight: 2,
                      onReorder: (oldIndex, newIndex) async {
                        competitionDetailsCubit.onReorder(oldIndex, newIndex);
                      }),
                  Expanded(
                    child: TabBarView(
                      children: competitionDetailsCubit.tabBarPage.map((e) {
                        return e;
                      }).toList(),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
