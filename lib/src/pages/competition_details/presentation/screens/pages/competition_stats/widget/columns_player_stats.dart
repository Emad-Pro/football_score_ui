import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../controller/cubit/competition_details_cubit.dart';

List<GridColumn> columnsPlayerStats(context) => [
      GridColumn(
        columnWidthMode: ColumnWidthMode.fitByCellValue,
        columnName: '#',
        allowEditing: false,
        label: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          alignment: Alignment.centerLeft,
          child: Text(
            '#',
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
        ),
      ),
      GridColumn(
        columnWidthMode: ColumnWidthMode.fill,
        columnName: 'Player',
        allowEditing: false,
        label: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          alignment: Alignment.centerLeft,
          child: Text(
            'Player',
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
        ),
      ),
      GridColumn(
        columnWidthMode: ColumnWidthMode.fitByColumnName,
        columnName: 'Assist',
        allowEditing: false,
        label: Container(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          alignment: Alignment.centerLeft,
          child: Text(
            BlocProvider.of<CompetitionDetailsCubit>(context)
                    .competetionStateList[
                BlocProvider.of<CompetitionDetailsCubit>(context)
                    .currentCompetitionStateIndex],
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
        ),
      ),
    ];
