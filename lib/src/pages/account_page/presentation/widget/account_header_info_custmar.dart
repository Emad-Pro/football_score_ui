import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/app_styles.dart';

class AccountHeaderInfoCustmar extends StatelessWidget {
  const AccountHeaderInfoCustmar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundColor: Color(0xffB6B6B6),
            child: Icon(
              CupertinoIcons.person,
              color: Color(0xff161616),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Emad Younis",
              style: TextStyle(
                  fontSize: getResponsiveFontSize(context, fontSize: 25),
                  color: const Color(0xffB6B6B6)),
            ),
          )
        ],
      ),
    );
  }
}
