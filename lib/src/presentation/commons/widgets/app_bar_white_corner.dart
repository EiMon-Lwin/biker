import 'package:biker/src/constant/constant.dart';
import 'package:flutter/material.dart';

class AppBarWhiteCorner extends StatelessWidget {
  const AppBarWhiteCorner({super.key, this.color});
  final Color? color;

  static const double kHeight = UIConstants.topCornderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: UIConstants.topCornderRadius,
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(UIConstants.topCornderRadius),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).scaffoldBackgroundColor,
            offset: const Offset(0, 2),
          )
        ],
      ),
    );
  }
}
