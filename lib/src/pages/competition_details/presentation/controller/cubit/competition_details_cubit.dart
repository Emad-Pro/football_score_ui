import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_details/domain/entitis/competition_player_model.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_details/presentation/screens/pages/competition_fixtures/competition_fixtures.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_details/presentation/screens/pages/competition_results/competition_results.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_details/presentation/screens/pages/competition_standings/competition_standings.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_details/presentation/screens/pages/competition_stats/competition_stats.dart';

part 'competition_details_state.dart';

class CompetitionDetailsCubit extends Cubit<CompetitionDetailsState> {
  CompetitionDetailsCubit() : super(CompetitionDetailsInitial()) {
    competitionStatsText = competetionStateList[0];
  }
  int currentCompetitionStateIndex = 0;
  List<String> competetionStateList = ["Goals", "Assist", "Clean Sheet"];
  changeCompetetionStateText(bool isBack) {
    if (isBack == true && currentCompetitionStateIndex < 2) {
      currentCompetitionStateIndex++;
      emit(CompetitionDetailsInitial());
    } else if (isBack == false && currentCompetitionStateIndex > 0) {
      currentCompetitionStateIndex--;
      emit(CompetitionDetailsInitial());
    }
  }

  static List<CompetitionPlayerModel> goalsPlayerCompetition = [
    CompetitionPlayerModel(
        id: 1,
        playerName: 'Erling Haaland',
        playerClub: 'Manchester City',
        playerImage: 'assets/images/player_goolals/haaland.png',
        playerScore: 34),
    CompetitionPlayerModel(
        id: 2,
        playerName: 'Harry Kane',
        playerClub: 'Tottenham',
        playerImage: 'assets/images/player_goolals/hary.png',
        playerScore: 25),
    CompetitionPlayerModel(
        id: 3,
        playerName: 'Ivan Toney',
        playerClub: 'Brentford',
        playerImage: 'assets/images/player_goolals/Ivan.png',
        playerScore: 20),
    CompetitionPlayerModel(
        id: 4,
        playerName: 'Mohamed Salah',
        playerClub: 'Liverpool',
        playerImage: 'assets/images/player_goolals/salah.png',
        playerScore: 17),
    CompetitionPlayerModel(
        id: 5,
        playerName: 'Marcus Rashford',
        playerClub: 'Manchester City',
        playerImage: 'assets/images/player_goolals/rashford.png',
        playerScore: 16)
  ];
  static List<CompetitionPlayerModel> assistPlayerCompetition = [
    CompetitionPlayerModel(
        id: 1,
        playerName: 'Kenin De Bruyne',
        playerClub: 'Manchester City',
        playerImage: 'assets/images/player_assist/keven.png',
        playerScore: 16),
    CompetitionPlayerModel(
        id: 2,
        playerName: 'Bukayo Saka',
        playerClub: 'Arsenal',
        playerImage: 'assets/images/player_assist/saka.png',
        playerScore: 11),
    CompetitionPlayerModel(
        id: 3,
        playerName: 'Landro Trossard',
        playerClub: 'Arsenal',
        playerImage: 'assets/images/player_assist/leandro.png',
        playerScore: 10),
    CompetitionPlayerModel(
        id: 4,
        playerName: 'Michael Olise',
        playerClub: 'Crystal Palace',
        playerImage: 'assets/images/player_assist/olise.png',
        playerScore: 9),
    CompetitionPlayerModel(
        id: 5,
        playerName: 'Andrew Robertson',
        playerClub: 'Liverpool',
        playerImage: 'assets/images/player_assist/andrew.png',
        playerScore: 8),
  ];
  static List<CompetitionPlayerModel> cleanSheetGoalKeaperPlayerCompetition = [
    CompetitionPlayerModel(
        id: 1,
        playerName: 'David de Gea',
        playerClub: 'Manchester United',
        playerImage: 'assets/images/competition_goalKeper/gea.png',
        playerScore: 15),
    CompetitionPlayerModel(
        id: 2,
        playerName: 'Nick Pope',
        playerClub: 'NewCastle United',
        playerImage: 'assets/images/competition_goalKeper/pope.png',
        playerScore: 13),
    CompetitionPlayerModel(
        id: 3,
        playerName: 'Aaron Ramsdale',
        playerClub: 'Arsenal',
        playerImage: 'assets/images/competition_goalKeper/aaron.png',
        playerScore: 12),
    CompetitionPlayerModel(
        id: 4,
        playerName: 'Emiliano Martinez',
        playerClub: 'Aston Villa',
        playerImage: 'assets/images/competition_goalKeper/martenez.png',
        playerScore: 11),
    CompetitionPlayerModel(
        id: 5,
        playerName: 'jose Sa',
        playerClub: 'Wolves',
        playerImage: 'assets/images/competition_goalKeper/sa.png',
        playerScore: 10),
  ];
  String? competitionStatsText;
  List<List<CompetitionPlayerModel>> playerCompeitionList = [
    goalsPlayerCompetition,
    assistPlayerCompetition,
    cleanSheetGoalKeaperPlayerCompetition,
  ];
  List<String> competitionTabbar = [
    "Results",
    "Fixtures",
    "Standings",
    "Stats"
  ];

  onReorder(int oldIndex, int newIndex) {
    String temp = competitionTabbar.removeAt(oldIndex);
    competitionTabbar.insert(newIndex, temp);
    emit(CompetitionDetailsInitial());
  }

  List<Widget> tabBarPage = [
    const CompetitionResults(),
    const CompetitionFixtures(),
    const CompetitionStandings(),
    const CompetitionStats()
  ];
}
