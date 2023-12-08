import 'package:extensions/context.dart';
import 'package:flutter/material.dart';

class GreyedBox extends StatelessWidget {
  final Widget child;
  const GreyedBox({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: context.theme.textTheme.bodyMedium!.color!.withOpacity(0.02),
            blurRadius: 4.0,
            spreadRadius: 1.0,
            offset: const Offset(2.0, 2.0),
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.grey.shade200,
      ),
      alignment: Alignment.center,
      child: child,
    );
  }
}
