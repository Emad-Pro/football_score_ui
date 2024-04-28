import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reorderable_tabbar/reorderable_tabbar.dart';

import '../controller/match_detail_cubit.dart';

class MatchDetailTabBar extends StatelessWidget {
  const MatchDetailTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: BlocProvider(
        create: (context) => MatchDetailCubit(),
        child: BlocBuilder<MatchDetailCubit, MatchDetailState>(
          builder: (context, state) {
            final matchDetailCubit = BlocProvider.of<MatchDetailCubit>(context);
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: DefaultTabController(
                length: matchDetailCubit.tabbarPages.length,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ReorderableTabBar(
                        useDelayedDragStartListener: true,
                        indicator: const BoxDecoration(
                            color: Color(0xffF63D68),
                            shape: BoxShape.rectangle),
                        buildDefaultDragHandles: false,
                        labelColor: const Color.fromARGB(255, 207, 195, 195),
                        unselectedLabelColor: const Color(0xff5D5C64),
                        tabs: matchDetailCubit.tabs
                            .map((e) => Tab(
                                  iconMargin: EdgeInsets.zero,
                                  child: Text(
                                    e,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400),
                                  ),
                                ))
                            .toList(),
                        indicatorSize: matchDetailCubit.tabSizeIsLabel
                            ? TabBarIndicatorSize.label
                            : null,
                        isScrollable: matchDetailCubit.isScrollable,
                        indicatorWeight: 2,
                        onReorder: (oldIndex, newIndex) async {
                          matchDetailCubit.onReorder(oldIndex, newIndex);
                        }),
                    Expanded(
                      child: Center(
                        child: TabBarView(
                          children: matchDetailCubit.tabbarPages.map((e) {
                            return e;
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
