import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reorderable_tabbar/reorderable_tabbar.dart';

import '../../controllers/cubit/matchs_cubit.dart';

class TabbarHomeScreen extends StatelessWidget {
  const TabbarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homecubit = BlocProvider.of<MatchsCubit>(context);
    return SliverFillRemaining(
      child: Container(
        margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: DefaultTabController(
          initialIndex: 1,
          length: homecubit.tabs.length,
          child: Column(
            children: [
              ReorderableTabBar(
                  indicator: const BoxDecoration(
                      color: Color(0xffF63D68), shape: BoxShape.rectangle),
                  buildDefaultDragHandles: false,
                  labelColor: Colors.white,
                  unselectedLabelColor: const Color(0xff5D5C64),
                  tabs: homecubit.tabs
                      .map((e) => Tab(
                            iconMargin: EdgeInsets.zero,
                            text: e,
                          ))
                      .toList(),
                  indicatorSize: homecubit.tabSizeIsLabel
                      ? TabBarIndicatorSize.label
                      : null,
                  isScrollable: homecubit.isScrollable,
                  indicatorWeight: 2,
                  onReorder: (oldIndex, newIndex) async {
                    homecubit.onReorder(oldIndex, newIndex);
                  }),
              Expanded(
                child: TabBarView(
                  children: homecubit.tabbarPages.map((e) {
                    return e;
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
