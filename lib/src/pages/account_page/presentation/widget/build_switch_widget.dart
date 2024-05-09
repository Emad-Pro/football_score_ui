import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildSwitchWidget extends StatelessWidget {
  const BuildSwitchWidget({super.key, required this.onChanged});
  final void Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.8,
      child: CupertinoSwitch(
        value: true,
        onChanged: onChanged,
        activeColor: const Color(0xffF63D68),
        thumbColor: Colors.white,
      ),
    );
  }
}
