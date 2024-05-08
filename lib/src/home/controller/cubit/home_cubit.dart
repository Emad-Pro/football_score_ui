import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/competition_page/presentation/screen/competition_screen.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/screens/matchs_page.dart';

import '../../../pages/news_page/presentation/screen/news_screen.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomNavigationBarItem = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.density_small_sharp), label: "Competition"),
    const BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "News"),
    const BottomNavigationBarItem(
        icon: Icon(Icons.person_2_outlined), label: "Account"),
  ];
  List<Widget> homePages = [
    const MatchsPage(),
    const CompetitionScreen(),
    const NewsScreen(),
    const Text("Account"),
  ];
  changeHomePage(int index) {
    currentIndex = index;
    emit(HomeInitial());
  }
}
