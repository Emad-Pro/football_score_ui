import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../data/model/subtitues_model.dart';
import '../screen/pages_tabar/match_detail_line_up/match_detail_line_up.dart';
import '../screen/pages_tabar/match_detail_stats/match_detail_stats.dart';
import '../screen/pages_tabar/match_detail_summary/match_detail_summary_page.dart';

part 'match_detail_state.dart';

class MatchDetailCubit extends Cubit<MatchDetailState> {
  MatchDetailCubit() : super(MatchDetailInitial());
  bool isScrollable = true;
  bool tabSizeIsLabel = false;
  List<String> tabs = [
    "Summary",
    "Line Up",
    "Stats",
    "H2h",
    "Standings",
    "Report"
  ];
  List<Widget> tabbarPages = [
    const MatchDetailSummaryPage(),
    const MatchDetailLineUp(),
    const MatchDetailStats(),
    const Text("H2h"),
    const Text("Standings"),
    const Text("Report")
  ];
  onReorder(int oldIndex, int newIndex) {
    String temp = tabs.removeAt(oldIndex);
    tabs.insert(newIndex, temp);
    emit(MatchDetailInitial());
  }

  List<SubTituesModel> team1ListPlayer = [
    SubTituesModel(namePlayer: "W.Hennesey (GK)", numberPlayer: "13"),
    SubTituesModel(namePlayer: "O. Mangala", numberPlayer: "5"),
    SubTituesModel(namePlayer: "J. Lingard", numberPlayer: "11"),
    SubTituesModel(namePlayer: "S. Surridge", numberPlayer: "16"),
    SubTituesModel(namePlayer: "E. Dennis", numberPlayer: "25"),
    SubTituesModel(namePlayer: "J. Worrall", numberPlayer: "4"),
    SubTituesModel(namePlayer: "J. Shelvey", numberPlayer: "8"),
    SubTituesModel(namePlayer: "H. Toffolo", numberPlayer: "15"),
    SubTituesModel(namePlayer: "A. Ayew", numberPlayer: "34")
  ];
  List<SubTituesModel> team2ListPlayer = [
    SubTituesModel(namePlayer: "J. Butland (GK)", numberPlayer: "31"),
    SubTituesModel(namePlayer: "N. Bishop (GK)", numberPlayer: "30"),
    SubTituesModel(namePlayer: "Fred", numberPlayer: "17"),
    SubTituesModel(namePlayer: "W. Weghorst", numberPlayer: "27"),
    SubTituesModel(namePlayer: "F. Pellistri", numberPlayer: "28"),
    SubTituesModel(namePlayer: "B. Williams", numberPlayer: "33"),
    SubTituesModel(namePlayer: "A. Elanga", numberPlayer: "36"),
    SubTituesModel(namePlayer: "Z. Iqbal", numberPlayer: "55"),
    SubTituesModel(namePlayer: "M. Jurado", numberPlayer: "63")
  ];
}
