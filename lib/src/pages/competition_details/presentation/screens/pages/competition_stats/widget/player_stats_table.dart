import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../controller/cubit/competition_details_cubit.dart';
import 'columns_player_stats.dart';
import 'standings_player_stats_data_source.dart';

class PlayerStatsTable extends StatelessWidget {
  const PlayerStatsTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<CompetitionDetailsCubit, CompetitionDetailsState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
                color: const Color(0xff1E1E1E),
                borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(15),
            child: SfDataGrid(
              shrinkWrapRows: true,
              gridLinesVisibility: GridLinesVisibility.none,
              headerGridLinesVisibility: GridLinesVisibility.none,
              source: StandingsPlayerStatsDataSource(
                  standingsList:
                      BlocProvider.of<CompetitionDetailsCubit>(context)
                              .playerCompeitionList[
                          BlocProvider.of<CompetitionDetailsCubit>(context)
                              .currentCompetitionStateIndex]),
              columns: columnsPlayerStats(context),
            ),
          );
        },
      ),
    );
  }
}
