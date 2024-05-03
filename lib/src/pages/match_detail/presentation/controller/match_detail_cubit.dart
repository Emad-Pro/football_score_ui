import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/match_detail/data/model/last_five_match_model.dart';
import 'package:sports_score_clean_architecture/src/pages/match_detail/domain/entitis/standing_model.dart';

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

  List<StandingsModel> standingsClub = [
    StandingsModel(
      id: 1,
      clubName: "Arsenal",
      pl: 33,
      w: 23,
      d: 6,
      l: 4,
      gD: 40,
      pTS: 75,
    ),
    StandingsModel(
      id: 2,
      clubName: "Manchester City",
      pl: 31,
      w: 23,
      d: 4,
      l: 4,
      gD: 53,
      pTS: 73,
    ),
    StandingsModel(
      id: 3,
      clubName: "Newcastle United",
      pl: 31,
      w: 16,
      d: 11,
      l: 4,
      gD: 29,
      pTS: 59,
    ),
    StandingsModel(
      id: 4,
      clubName: "Manchester United",
      pl: 30,
      w: 18,
      d: 5,
      l: 7,
      gD: 9,
      pTS: 59,
    ),
    StandingsModel(
      id: 5,
      clubName: "Aston Villa",
      pl: 33,
      w: 16,
      d: 6,
      l: 11,
      gD: 5,
      pTS: 54,
    ),
    StandingsModel(
      id: 6,
      clubName: "Liverpool",
      pl: 32,
      w: 15,
      d: 8,
      l: 9,
      gD: 22,
      pTS: 53,
    ),
    StandingsModel(
      id: 7,
      clubName: "Tottenham",
      pl: 32,
      w: 16,
      d: 5,
      l: 11,
      gD: 7,
      pTS: 53,
    ),
    StandingsModel(
      id: 8,
      clubName: "Brighton",
      pl: 30,
      w: 14,
      d: 7,
      l: 9,
      gD: 15,
      pTS: 49,
    ),
    StandingsModel(
      id: 9,
      clubName: "Brentford",
      pl: 33,
      w: 11,
      d: 14,
      l: 8,
      gD: 7,
      pTS: 47,
    ),
    StandingsModel(
      id: 10,
      clubName: "Fulham",
      pl: 32,
      w: 13,
      d: 6,
      l: 13,
      gD: 1,
      pTS: 45,
    ),
    StandingsModel(
      id: 11,
      clubName: "Chelsea",
      pl: 31,
      w: 10,
      d: 9,
      l: 13,
      gD: -5,
      pTS: 39,
    ),
    StandingsModel(
      id: 12,
      clubName: "Crystal Palace",
      pl: 33,
      w: 9,
      d: 10,
      l: 14,
      gD: -11,
      pTS: 37,
    ),
    StandingsModel(
      id: 13,
      clubName: "Wolves",
      pl: 33,
      w: 10,
      d: 7,
      l: 16,
      gD: -15,
      pTS: 37,
    ),
    StandingsModel(
      id: 14,
      clubName: "West Ham United",
      pl: 32,
      w: 9,
      d: 7,
      l: 16,
      gD: -9,
      pTS: 34,
    ),
    StandingsModel(
      id: 15,
      clubName: "Bournemouth",
      pl: 32,
      w: 9,
      d: 6,
      l: 17,
      gD: -32,
      pTS: 33,
    ),
    StandingsModel(
      id: 16,
      clubName: "Leeds United",
      pl: 32,
      w: 7,
      d: 9,
      l: 17,
      gD: -21,
      pTS: 30,
    ),
    StandingsModel(
      id: 17,
      clubName: "Nottingham Forest",
      pl: 32,
      w: 7,
      d: 9,
      l: 17,
      gD: -31,
      pTS: 30,
    ),
    StandingsModel(
      id: 18,
      clubName: "Leiceter City",
      pl: 33,
      w: 8,
      d: 5,
      l: 20,
      gD: -13,
      pTS: 29,
    ),
    StandingsModel(
      id: 19,
      clubName: "Everton",
      pl: 32,
      w: 6,
      d: 10,
      l: 16,
      gD: -22,
      pTS: 28,
    ),
    StandingsModel(
      id: 20,
      clubName: "Southampton",
      pl: 32,
      w: 6,
      d: 6,
      l: 20,
      gD: -29,
      pTS: 24,
    ),
  ];
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
