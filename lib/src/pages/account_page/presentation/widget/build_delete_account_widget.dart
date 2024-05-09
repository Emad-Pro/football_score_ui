import 'package:flutter/material.dart';

class BuildDeleteAccountWidget extends StatelessWidget {
  const BuildDeleteAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: TextButton(
              onPressed: () {},
              child: const Text(
                "Delete Account",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
              ))),
    );
  }
}
