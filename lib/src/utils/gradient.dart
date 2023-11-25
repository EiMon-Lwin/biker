import 'package:flutter/material.dart';

abstract class GradientGenerator {
  static LinearGradient twoColorDiagonalLinear(Color first, [Color? second]) {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: const [0.3, 1.0],
      tileMode: TileMode.decal,
      colors: [
        first,
        second ?? Color.lerp(first, Colors.white, 0.5)!,
        // second ?? first.withOpacity(first.opacity * 0.5),
      ],
    );
  }
}
