import 'package:bloc/bloc.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/screens/widget/tabbar_favorites_page.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/screens/widget/tabbar_score_page.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/screens/widget/tabbar_upcoming_page.dart';

part 'matchs_state.dart';

class MatchsCubit extends Cubit<MatchsState> {
  MatchsCubit() : super(MatchsInital());
  DateTime focusDate = DateTime.now();
  final EasyInfiniteDateTimelineController dateTimelineController =
      EasyInfiniteDateTimelineController();
  changeFocusDateTime(DateTime date) {
    focusDate = date;
    emit(MatchsInital());
  }

  subtractDay() {
    focusDate = focusDate.subtract(const Duration(days: 1));
    dateTimelineController.jumpToDate(focusDate);
    emit(MatchsInital());
  }

  addDay() {
    focusDate = focusDate.add(const Duration(days: 1));
    dateTimelineController.jumpToDate(focusDate);
    emit(MatchsInital());
  }

// BottomNavigationBar

  /// TabBar
  PageController pageController = PageController();
  List<String> tabs = [
    "Upcoming",
    "Score",
    "Favorites",
  ];

  bool isScrollable = false;
  bool tabSizeIsLabel = false;
  onReorder(int oldIndex, int newIndex) {
    String temp = tabs.removeAt(oldIndex);
    tabs.insert(newIndex, temp);
    emit(MatchsInital());
  }

  List<Widget> tabbarPages = [
    const TabbarUpcomingPage(),
    const TabbarScorePage(),
    const TabbarFavoritesPage()
  ];
}
