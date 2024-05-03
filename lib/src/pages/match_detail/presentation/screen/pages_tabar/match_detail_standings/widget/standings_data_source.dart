import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../../domain/entitis/standing_model.dart';

class StandingsDataSource extends DataGridSource {
  StandingsDataSource({required List<StandingsModel> standingsList}) {
    _standingsList = standingsList
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: '#', value: e.id),
              DataGridCell<String>(columnName: 'Club', value: e.clubName),
              DataGridCell<int>(columnName: 'Pl', value: e.pl),
              DataGridCell<int>(columnName: 'W', value: e.w),
              DataGridCell<int>(columnName: 'D', value: e.d),
              DataGridCell<int>(columnName: 'L', value: e.l),
              DataGridCell<int>(columnName: 'GD', value: e.gD),
              DataGridCell<int>(columnName: 'PTS', value: e.pTS),
            ]))
        .toList();
  }
  List<DataGridRow> _standingsList = [];

  @override
  List<DataGridRow> get rows => _standingsList;
  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
        cells: row.getCells().map<Widget>((e) {
      return Container(
        alignment: e.columnName == "Club"
            ? Alignment.centerLeft
            : Alignment.centerLeft,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            if (e.columnName == "#" && e.value >= 1 && e.value <= 4)
              Container(
                height: double.infinity,
                width: 3,
                margin: const EdgeInsets.only(right: 10),
                color: const Color(0xff2E90FA),
              ),
            if (e.columnName == "#" && e.value >= 5 && e.value <= 6)
              Container(
                height: double.infinity,
                width: 3,
                margin: const EdgeInsets.only(right: 10),
                color: const Color(0xffFB6514),
              ),
            if (e.columnName == "#" && e.value >= 7 && e.value <= 8)
              Container(
                height: double.infinity,
                width: 3,
                margin: const EdgeInsets.only(right: 10),
                color: const Color(0xff12B76A),
              ),
            if (e.columnName == "#" && e.value > 17 && e.value <= 20)
              Container(
                height: double.infinity,
                width: 3,
                margin: const EdgeInsets.only(right: 5),
                color: const Color(0xffB42318),
              ),
            Text(
              e.value.toString(),
              style: TextStyle(
                  color: e.columnName == "PTS"
                      ? const Color(0xffF63D68)
                      : Colors.grey,
                  fontWeight: e.columnName == "PTS" ? FontWeight.bold : null),
            ),
          ],
        ),
      );
    }).toList());
  }
}
