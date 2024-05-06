import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../../domain/entitis/competition_player_model.dart';

class StandingsPlayerStatsDataSource extends DataGridSource {
  StandingsPlayerStatsDataSource(
      {required List<CompetitionPlayerModel> standingsList}) {
    _standingsList = standingsList
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: '#', value: e.id),
              DataGridCell<List<String>>(
                  columnName: 'Player',
                  value: [e.playerName, e.playerClub, e.playerImage]),
              DataGridCell<int>(columnName: 'Assist', value: e.playerScore),
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
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(0.0),
        child: Row(
          children: [
            if (e.columnName == "Player")
              Expanded(
                  child: ListTile(
                title: Text(
                  e.value[0],
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w100),
                ),
                subtitle: Text(
                  e.value[1],
                  style:
                      const TextStyle(fontSize: 9, fontWeight: FontWeight.w100),
                ),
                leading: Image.asset(e.value[2]),
              )),
            if (e.columnName != "Player")
              Text(
                e.value.toString(),
                style: TextStyle(
                    color: e.columnName == "Assist"
                        ? const Color(0xffF63D68)
                        : Colors.grey),
              ),
          ],
        ),
      );
    }).toList());
  }
}
