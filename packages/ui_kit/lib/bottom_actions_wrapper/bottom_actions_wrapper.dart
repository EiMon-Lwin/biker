import 'package:extensions/extensions.dart';
import 'package:flutter/material.dart';

class BottomActionsWrapper extends StatelessWidget {
  final double height;
  final Widget child;

  const BottomActionsWrapper({
    super.key,
    this.height = kHeight,
    required this.child,
  });

  static const double kHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: context.theme.cardColor,
      ),
      child: child,
    );
  }
}
