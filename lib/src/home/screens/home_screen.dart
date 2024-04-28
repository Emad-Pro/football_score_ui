import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sports_score_clean_architecture/src/home/controller/cubit/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final homeCubit = BlocProvider.of<HomeCubit>(context);
        return Scaffold(
          body: homeCubit.homePages[homeCubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: homeCubit.currentIndex,
              selectedIconTheme: const IconThemeData(color: Color(0xffF63D68)),
              selectedItemColor: Colors.white,
              selectedLabelStyle: const TextStyle(color: Colors.white),
              unselectedItemColor: const Color(0xff667085),
              showUnselectedLabels: true,
              unselectedIconTheme:
                  const IconThemeData(color: Color(0xff667085)),
              onTap: (index) {
                homeCubit.changeHomePage(index);
              },
              items: homeCubit.bottomNavigationBarItem),
        );
      },
    );
  }
}
