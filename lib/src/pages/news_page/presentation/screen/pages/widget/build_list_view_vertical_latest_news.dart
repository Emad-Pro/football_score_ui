import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controller/cubit/news_cubit.dart';
import 'build_item_list_view_vertical_latest_news.dart';

class BuildListViewVerticalLatesNews extends StatelessWidget {
  const BuildListViewVerticalLatesNews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 15),
      sliver: SliverList.separated(
          itemCount:
              BlocProvider.of<NewsCubit>(context).latestNewsVertical.length,
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemBuilder: (context, index) {
            return BuildItemListViewVerticalLatestNews(
                newsModel: BlocProvider.of<NewsCubit>(context)
                    .latestNewsVertical[index]);
          }),
    );
  }
}
