import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../controller/cubit/competition_details_cubit.dart';

class StatsPlayerButtonControll extends StatelessWidget {
  const StatsPlayerButtonControll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<CompetitionDetailsCubit, CompetitionDetailsState>(
        builder: (context, state) {
          final competitionDetailsCubit =
              BlocProvider.of<CompetitionDetailsCubit>(context);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            child: Row(
              children: [
                Text(competitionDetailsCubit.competetionStateList[
                    competitionDetailsCubit.currentCompetitionStateIndex]),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      BlocProvider.of<CompetitionDetailsCubit>(context)
                          .changeCompetetionStateText(false);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color:
                          competitionDetailsCubit.currentCompetitionStateIndex >
                                  0
                              ? Colors.white
                              : Colors.grey[700],
                    )),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<CompetitionDetailsCubit>(context)
                        .changeCompetetionStateText(true);
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                  color:
                      competitionDetailsCubit.currentCompetitionStateIndex < 2
                          ? Colors.white
                          : Colors.grey[700],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
