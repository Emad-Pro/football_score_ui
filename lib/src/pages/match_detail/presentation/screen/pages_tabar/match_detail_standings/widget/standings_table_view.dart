import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../controller/match_detail_cubit.dart';
import 'standings_data_source.dart';

class StandingsTableView extends StatelessWidget {
  const StandingsTableView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SfDataGrid(
        shrinkWrapRows: true,
        gridLinesVisibility: GridLinesVisibility.none,
        headerGridLinesVisibility: GridLinesVisibility.none,
        source: StandingsDataSource(
            standingsList:
                BlocProvider.of<MatchDetailCubit>(context).standingsClub),
        columns: <GridColumn>[
          GridColumn(
            columnWidthMode: ColumnWidthMode.fitByCellValue,
            columnName: '#',
            allowEditing: false,
            label: Container(
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.center,
              child: Text(
                '#',
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
            ),
          ),
          GridColumn(
            columnWidthMode: ColumnWidthMode.fitByCellValue,
            columnName: 'Club',
            label: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'Club',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ),
          GridColumn(
            columnWidthMode: ColumnWidthMode.fitByCellValue,
            columnName: 'Pl',
            label: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text('PL',
                  style: TextStyle(color: Colors.grey[700]),
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          GridColumn(
            columnWidthMode: ColumnWidthMode.fitByCellValue,
            columnName: 'W',
            label: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'W',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ),
          GridColumn(
            columnWidthMode: ColumnWidthMode.fitByCellValue,
            columnName: 'D',
            label: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'D',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ),
          GridColumn(
            columnWidthMode: ColumnWidthMode.fitByCellValue,
            columnName: 'L',
            label: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'L',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ),
          GridColumn(
            columnWidthMode: ColumnWidthMode.fitByCellValue,
            columnName: 'GD',
            label: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'GD',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ),
          GridColumn(
            columnWidthMode: ColumnWidthMode.fitByCellValue,
            columnName: 'PTS',
            label: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: Text(
                'PTS',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
