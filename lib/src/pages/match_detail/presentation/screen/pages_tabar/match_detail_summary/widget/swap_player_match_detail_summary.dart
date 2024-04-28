import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../domain/model/swap_player_model.dart';

class SwapPlayerMatchDetailSummaryPage extends StatelessWidget {
  const SwapPlayerMatchDetailSummaryPage(
      {super.key,
      required this.swapPlayerModel,
      required this.mainAxisAlignment,
      required this.timeSwap});
  final SwapPlayerModel swapPlayerModel;
  final MainAxisAlignment mainAxisAlignment;
  final String timeSwap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          if (mainAxisAlignment == MainAxisAlignment.start)
            Row(
              children: [
                Text(
                  "$timeSwap'",
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.grey),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SvgPicture.asset("assets/images/swap.svg")),
              ],
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "In",
                    style: TextStyle(color: Colors.green),
                  ),
                  Text(
                    ": ${swapPlayerModel.namePlayerIn}",
                    style: const TextStyle(),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Out",
                    style: TextStyle(color: Colors.red),
                  ),
                  Text(
                    ": ${swapPlayerModel.namePlayerOut}",
                    style: const TextStyle(),
                  ),
                ],
              )
            ],
          ),
          if (mainAxisAlignment == MainAxisAlignment.end)
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SvgPicture.asset("assets/images/swap.svg")),
                Text(
                  "$timeSwap'",
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.grey),
                ),
              ],
            )
        ],
      ),
    );
  }
}
