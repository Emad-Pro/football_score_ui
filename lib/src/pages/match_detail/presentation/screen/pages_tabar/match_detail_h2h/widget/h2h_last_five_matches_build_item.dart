import 'package:flutter/material.dart';

import '../../../../../../../../core/app_styles.dart';
import '../../../../../data/model/last_five_match_model.dart';

class H2hLastFiveMAtchesBuildItem extends StatelessWidget {
  const H2hLastFiveMAtchesBuildItem(
      {super.key, required this.lastFiveMatchModel});
  final LastFiveMatchModel lastFiveMatchModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            lastFiveMatchModel.yearMatch,
            style: TextStyle(
              color: Colors.grey,
              fontSize: getResponsiveFontSize(context, fontSize: 18),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(lastFiveMatchModel.teamOneLogo),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(lastFiveMatchModel.teamOneName),
                    ),
                    const Spacer(),
                    Text(lastFiveMatchModel.scoreTeamOne)
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(lastFiveMatchModel.teamTowlogo),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(lastFiveMatchModel.teamTowName),
                      ),
                      const Spacer(),
                      Text(lastFiveMatchModel.scoreTeameTow)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
