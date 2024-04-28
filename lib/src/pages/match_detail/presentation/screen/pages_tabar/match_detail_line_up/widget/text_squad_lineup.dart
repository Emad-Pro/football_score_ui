import 'package:flutter/material.dart';

class TextSquadLineUp extends StatelessWidget {
  const TextSquadLineUp({
    super.key,
    this.teamNameOne,
    this.teamSquadOne,
  });
  final String? teamNameOne;
  final String? teamSquadOne;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5),
          child: Row(
            children: [
              if (teamNameOne != null)
                Text(
                  teamNameOne!,
                  style: const TextStyle(color: Colors.grey),
                ),
              const Spacer(),
              if (teamSquadOne != null)
                Text(
                  teamSquadOne!,
                  style: const TextStyle(color: Colors.grey),
                )
            ],
          ),
        ),
        Stack(
          children: [
            Image.asset("assets/images/Frame 37 (2).png"),
            //    Image.asset("assets/images/Grass.png"),
          ],
        )
      ],
    );
  }
}
