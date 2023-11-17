import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigationWrapper extends StatelessWidget {
  final Widget child;
  final double height;

  const BottomNavigationWrapper({
    super.key,
    this.height = 66.0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: context.width,
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: child,
    );
  }
}
