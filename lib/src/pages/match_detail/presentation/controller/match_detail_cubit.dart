import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/match_detail/data/model/last_five_match_model.dart';

import '../../data/model/subtitues_model.dart';
import '../screen/pages_tabar/match_detail_h2h/match_detail_h2h.dart';
import '../screen/pages_tabar/match_detail_line_up/match_detail_line_up.dart';
import '../screen/pages_tabar/match_detail_standings/match_detail_standings.dart';
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
    const MatchDetailH2h(),
    const MatchDetailStandings(),
    const Text("Report")
  ];
  onReorder(int oldIndex, int newIndex) {
    String temp = tabs.removeAt(oldIndex);
    tabs.insert(newIndex, temp);
    emit(MatchDetailInitial());
  }

  List<LastFiveMatchModel> lastFiveMatch = [
    LastFiveMatchModel(
        yearMatch: '2022',
        teamOneLogo: 'assets/images/team2.png',
        teamTowlogo: 'assets/images/team1.png',
        teamOneName: 'Manchester United',
        teamTowName: 'Nottingham Forest',
        scoreTeamOne: '3',
        scoreTeameTow: '0'),
    LastFiveMatchModel(
        yearMatch: '1999',
        teamOneLogo: 'assets/images/team1.png',
        teamTowlogo: 'assets/images/team2.png',
        teamTowName: 'Manchester United',
        teamOneName: 'Nottingham Forest',
        scoreTeamOne: '1',
        scoreTeameTow: '8'),
    LastFiveMatchModel(
        yearMatch: '1998',
        teamOneLogo: 'assets/images/team2.png',
        teamTowlogo: 'assets/images/team1.png',
        teamOneName: 'Manchester United',
        teamTowName: 'Nottingham Forest',
        scoreTeamOne: '3',
        scoreTeameTow: '0'),
    LastFiveMatchModel(
        yearMatch: '1996',
        teamOneLogo: 'assets/images/team1.png',
        teamTowlogo: 'assets/images/team2.png',
        teamTowName: 'Manchester United',
        teamOneName: 'Nottingham Forest',
        scoreTeamOne: '0',
        scoreTeameTow: '4'),
    LastFiveMatchModel(
        yearMatch: '1998',
        teamOneLogo: 'assets/images/team2.png',
        teamTowlogo: 'assets/images/team1.png',
        teamOneName: 'Manchester United',
        teamTowName: 'Nottingham Forest',
        scoreTeamOne: '4',
        scoreTeameTow: '1'),
  ];

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
