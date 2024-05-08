import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reorderable_tabbar/reorderable_tabbar.dart';

import '../controller/cubit/news_cubit.dart';

class BuildTabbarNewsBody extends StatelessWidget {
  const BuildTabbarNewsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          final newsCubit = BlocProvider.of<NewsCubit>(context);
          return DefaultTabController(
              length: newsCubit.tabsName.length,
              child: Column(
                children: [
                  ReorderableTabBar(
                      isScrollable: true,
                      indicator: const BoxDecoration(
                          color: Color(0xffF63D68), shape: BoxShape.rectangle),
                      buildDefaultDragHandles: false,
                      labelColor: Colors.white,
                      unselectedLabelColor: const Color(0xff5D5C64),
                      tabs: newsCubit.tabsName
                          .map((e) => Tab(
                                iconMargin: EdgeInsets.zero,
                                text: e,
                              ))
                          .toList(),
                      indicatorWeight: 2,
                      onReorder: (oldIndex, newIndex) async {
                        newsCubit.onReorder(oldIndex, newIndex);
                      }),
                  Expanded(
                    child: TabBarView(
                      children: newsCubit.tabbarPages.map((e) {
                        return e;
                      }).toList(),
                    ),
                  ),
                ],
              ));
        },
      ),
    );
  }
}
