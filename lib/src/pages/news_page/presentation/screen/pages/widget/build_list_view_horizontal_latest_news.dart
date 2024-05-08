import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/cubit/news_cubit.dart';
import 'build_list_view_latest_newst_item.dart';

class BuildListViewHorizontalLatestNews extends StatelessWidget {
  const BuildListViewHorizontalLatestNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .5,
        height: MediaQuery.of(context).size.height * 0.4,
        child: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: true),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount:
                BlocProvider.of<NewsCubit>(context).latestNewsHorizontal.length,
            itemBuilder: (context, index) {
              return BuildListViewLatestNewsItem(
                index: index,
                newsModel: BlocProvider.of<NewsCubit>(context)
                    .latestNewsHorizontal[index],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                width: 15,
              );
            },
          ),
        ),
      ),
    );
  }
}
