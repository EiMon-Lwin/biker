import 'package:flutter/material.dart';

class LinearProgressiveLoadingWidget extends StatelessWidget {
  final double width;
  final String? subtitle;
  const LinearProgressiveLoadingWidget({
    super.key,
    this.subtitle,
    this.width = kWidth,
  });
  static const double kWidth = 200;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: const FittedBox(
        fit: BoxFit.fitWidth,
        child: LinearProgressIndicator(),
      ),
    );
  }
}
