import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_page/domain/entitis/comptition_model.dart';

import '../../screen/page/competition_top_page/competition_top_page.dart';

part 'competition_state.dart';

class CompetitionCubit extends Cubit<CompetitionState> {
  CompetitionCubit() : super(CompetitionInitial());
  List<String> competitionTabbar = ["Top", "Region", "Favorites"];
  onReorder(int oldIndex, int newIndex) {
    String temp = competitionTabbar.removeAt(oldIndex);
    competitionTabbar.insert(newIndex, temp);
    emit(CompetitionInitial());
  }

  List<Widget> tabBarPage = [
    const CompetitionTopPage(),
    const CompetitionTopPage(),
    const CompetitionTopPage()
  ];

  List<CompetitionModel> competitionTop = [
    CompetitionModel(
        country: "Europe",
        championsName: "Champions League",
        countryFlags: "assets/images/competition_logo/eu.png"),
    CompetitionModel(
        country: "England",
        championsName: "Premier League",
        countryFlags: "assets/images/competition_logo/en.png"),
    CompetitionModel(
        country: "Spain",
        championsName: "La Liga",
        countryFlags: "assets/images/competition_logo/esp.png"),
    CompetitionModel(
        country: "Italy",
        championsName: "Serie A",
        countryFlags: "assets/images/competition_logo/it.png"),
    CompetitionModel(
        country: "France",
        championsName: "Ligue 1",
        countryFlags: "assets/images/competition_logo/fr.png"),
    CompetitionModel(
        country: "Europe",
        championsName: "Europe League",
        countryFlags: "assets/images/competition_logo/eu.png"),
  ];
}
