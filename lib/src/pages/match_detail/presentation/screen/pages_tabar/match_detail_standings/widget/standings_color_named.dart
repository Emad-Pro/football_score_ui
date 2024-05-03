import 'package:flutter/material.dart';

class StandingsColorNamed extends StatelessWidget {
  const StandingsColorNamed(
      {super.key, required this.text, required this.color});
  final Color color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(5)),
        ),
        Text(
          text,
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
