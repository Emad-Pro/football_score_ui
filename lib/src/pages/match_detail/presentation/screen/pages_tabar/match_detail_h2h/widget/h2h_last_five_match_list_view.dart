import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../controller/match_detail_cubit.dart';

import 'h2h_last_five_matches_build_item.dart';

class H2hLastFiveMatchListView extends StatelessWidget {
  const H2hLastFiveMatchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "LAST 5 MATCHES",
                style: TextStyle(fontSize: 20, color: Colors.grey[700]),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: BlocProvider.of<MatchDetailCubit>(context)
                  .lastFiveMatch
                  .length,
              itemBuilder: (context, index) {
                return H2hLastFiveMAtchesBuildItem(
                    lastFiveMatchModel:
                        BlocProvider.of<MatchDetailCubit>(context)
                            .lastFiveMatch[index]);
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
            ),
          ),
        ],
      ),
    );
  }
}
