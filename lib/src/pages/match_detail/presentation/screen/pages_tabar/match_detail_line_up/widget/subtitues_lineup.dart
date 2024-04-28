import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../controller/match_detail_cubit.dart';
import '../match_detail_line_up.dart';
import 'build_subtitues_widget.dart';

class SubTituesLineUp extends StatelessWidget {
  const SubTituesLineUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/team1.png"),
                Text("subtitues".toUpperCase()),
                Image.asset("assets/images/team2.png")
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 140,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return FittedBox(
                      alignment: Alignment.bottomLeft,
                      fit: BoxFit.scaleDown,
                      child: BuildSubtituesWidget(
                          teamNum: 1,
                          subTituesModel:
                              BlocProvider.of<MatchDetailCubit>(context)
                                  .team1ListPlayer[index]),
                    );
                  },
                  shrinkWrap: true,
                  itemCount: BlocProvider.of<MatchDetailCubit>(context)
                      .team1ListPlayer
                      .length,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 140,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return BuildSubtituesWidget(
                        teamNum: 2,
                        subTituesModel:
                            BlocProvider.of<MatchDetailCubit>(context)
                                .team2ListPlayer[index]);
                  },
                  shrinkWrap: true,
                  itemCount: BlocProvider.of<MatchDetailCubit>(context)
                      .team2ListPlayer
                      .length,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
