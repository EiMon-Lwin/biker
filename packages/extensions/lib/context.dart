import 'package:flutter/material.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get width => mediaQuery.size.width;
  double get height => mediaQuery.size.height;

  double get pixelRatio => View.of(this).devicePixelRatio;
}
