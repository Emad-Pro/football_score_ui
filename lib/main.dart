import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_score_clean_architecture/src/home/controller/cubit/home_cubit.dart';
import 'package:sports_score_clean_architecture/src/pages/matchs_page/presentation/controllers/cubit/matchs_cubit.dart';

import 'src/pages/match_detail/presentation/screen/match_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => MatchsCubit()),
        BlocProvider(create: (context) => HomeCubit())
      ],
      child: MaterialApp(
        title: 'Score App',
        themeMode: ThemeMode.dark,
        darkTheme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MatchDetailScreen(),
      ),
    );
  }
}