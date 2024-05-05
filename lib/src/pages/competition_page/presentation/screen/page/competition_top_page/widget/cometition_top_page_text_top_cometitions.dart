import 'package:flutter/material.dart';

class CometitionTopPageTextTopCometitions extends StatelessWidget {
  const CometitionTopPageTextTopCometitions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: const Text(
          "TOP COMPETITIONS",
          style: TextStyle(
            color: Color(0xff5D5C64),
          ),
        ),
      ),
    );
  }
}
