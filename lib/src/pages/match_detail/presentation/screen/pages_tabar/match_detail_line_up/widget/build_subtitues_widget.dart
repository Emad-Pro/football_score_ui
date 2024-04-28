import 'package:flutter/material.dart';

import '../../../../../data/model/subtitues_model.dart';

class BuildSubtituesWidget extends StatelessWidget {
  const BuildSubtituesWidget(
      {super.key, required this.subTituesModel, required this.teamNum});
  final SubTituesModel subTituesModel;
  final int teamNum;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          if (teamNum == 1)
            Container(
              width: 20,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                subTituesModel.numberPlayer,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          SizedBox(
              width: teamNum == 2 ? 120 : null,
              child: Text(subTituesModel.namePlayer)),
          if (teamNum == 2)
            Text(
              subTituesModel.numberPlayer,
              style: const TextStyle(color: Colors.grey),
            ),
        ],
      ),
    );
  }
}
