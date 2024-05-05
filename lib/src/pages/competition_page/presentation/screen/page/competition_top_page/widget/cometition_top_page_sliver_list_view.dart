import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../controller/cubit/competition_cubit.dart';
import 'competition_top_page_build_listtile_item.dart';

class CometitionTopPageSliverListView extends StatelessWidget {
  const CometitionTopPageSliverListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        itemBuilder: (context, index) => CompetitionTopPageBuildListTileItem(
              competitionModel: BlocProvider.of<CompetitionCubit>(context)
                  .competitionTop[index],
            ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount:
            BlocProvider.of<CompetitionCubit>(context).competitionTop.length);
  }
}
