import 'package:flutter/material.dart';

class CustomAppbarBack extends StatelessWidget {
  const CustomAppbarBack({super.key, required this.titleAppbar});
  final Widget titleAppbar;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.share),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.star),
          )
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
              size: 16,
            )),
        centerTitle: true,
        title: titleAppbar);
  }
}
