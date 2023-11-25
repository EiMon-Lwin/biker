import 'package:extensions/extensions.dart';
import 'package:flutter/material.dart';

class BottomActionsWrapper extends StatelessWidget {
  final Widget child;

  const BottomActionsWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      decoration: BoxDecoration(
        color: context.theme.cardColor,
      ),
    );
  }
}
