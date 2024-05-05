import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_details/presentation/screens/pages/competition_fixtures/competition_fixtures.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_details/presentation/screens/pages/competition_results/competition_results.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_details/presentation/screens/pages/competition_standings/competition_standings.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_details/presentation/screens/pages/competition_stats/competition_stats.dart';

part 'competition_details_state.dart';

class CompetitionDetailsCubit extends Cubit<CompetitionDetailsState> {
  CompetitionDetailsCubit() : super(CompetitionDetailsInitial());
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
