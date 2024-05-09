// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BuildLogOutButtonAccount extends StatelessWidget {
  const BuildLogOutButtonAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          clipBehavior: Clip.hardEdge,
          color: const Color(0xffB42318),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Log Out",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ),
        ),
      ),
    );
  }
}
