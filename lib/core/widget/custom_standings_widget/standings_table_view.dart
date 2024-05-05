import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../standing_model.dart';

import 'standings_data_source.dart';
import 'standings_table_grid_column_item.dart';

class StandingsTableView extends StatelessWidget {
  const StandingsTableView({super.key, required this.standingsList});
  final List<StandingsModel> standingsList;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SfDataGrid(
        shrinkWrapRows: true,
        gridLinesVisibility: GridLinesVisibility.none,
        headerGridLinesVisibility: GridLinesVisibility.none,
        source: StandingsDataSource(standingsList: standingsList),
        columns: tableGridColumnItem,
      ),
    );
  }
}
