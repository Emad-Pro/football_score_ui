import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sports_score_clean_architecture/src/pages/news_page/domin/entitis/news_model.dart';
import 'package:sports_score_clean_architecture/src/pages/news_page/presentation/screen/pages/latest_news.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());
  List<String> tabsName = [
    "Latest",
    "Premier League",
    "European Football",
    "Transfer",
    "La lega",
    "Seria A",
    "Other Leagues",
    "Trivia"
  ];
  onReorder(int oldIndex, int newIndex) {
    String temp = tabsName.removeAt(oldIndex);
    tabsName.insert(newIndex, temp);
    emit(NewsInitial());
  }

  List<Widget> tabbarPages = [
    const LatestNews(),
    const Text("Premier League"),
    const Text("European Football"),
    const Text("Transfer"),
    const Text("La lega"),
    const Text("Seria A"),
    const Text("Other Leagues"),
    const Text("Trivia")
  ];
  List<NewsModel> latestNewsHorizontal = [
    NewsModel(
        newsHour: "5 hours ago",
        newsImage: 'assets/images/latest_news/Rectangle 6.png',
        newsTag: ["Latest", "Premier League"],
        newsText: 'Erling Haaland Breaks a Premier League Most Scored',
        newsTextDetails:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
    NewsModel(
        newsHour: "8 hours ago",
        newsImage: 'assets/images/latest_news/real.png',
        newsTag: ["Latest", "LaLiga", "Real Madrid"],
        newsText: 'Real Madrid Downfall Againts Real Sociedad',
        newsTextDetails:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
  ];
  List<NewsModel> latestNewsVertical = [
    NewsModel(
        newsHour: "5 hours ago",
        newsImage: 'assets/images/latest_news/Rectangle 7.png',
        newsTag: ["Latest", "Premier League"],
        newsText: 'PL Relegation Got Heated Up: Who’s Get Relegated?',
        newsTextDetails:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
    NewsModel(
        newsHour: "9 hours ago",
        newsImage: 'assets/images/latest_news/Rectangle 7 (1).png',
        newsTag: ["Latest", "Transfer"],
        newsText: 'Al Hilal Rumoured To Sign Leo Messi With High Offering',
        newsTextDetails:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."),
  ];
}
