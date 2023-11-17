import 'package:flutter/material.dart';

class AppBarCircularButton extends StatelessWidget {
  final Widget? label;
  final IconData? iconData;
  final Color? iconColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  const AppBarCircularButton({
    super.key,
    this.onTap,
    this.iconColor,
    this.iconData,
    this.backgroundColor,
    this.label,
  });

  static double height = 36.0;

  @override
  Widget build(BuildContext context) {
    if (!Navigator.canPop(context) && onTap == null) {
      return const SizedBox.shrink();
    }

    final child = GestureDetector(
      onTap: onTap ?? (Navigator.canPop(context) ? () => Navigator.pop(context) : null),
      child: Container(
        color: Colors.white.withOpacity(0.001),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Container(
                width: height,
                height: height,
                decoration: BoxDecoration(
                    color: backgroundColor ?? Colors.white,
                    borderRadius: BorderRadius.circular(height),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor.withOpacity(0.02),
                        spreadRadius: 2.0,
                        blurRadius: 2.0,
                      )
                    ]),
                child: Icon(
                  iconData ?? Icons.arrow_back_rounded,
                  color: iconColor ?? Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    if (label == null) return child;

    return Stack(
      children: [
        child,
        Positioned(
          right: 0,
          top: 4.0,
          child: CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.red,
            child: label!,
          ),
        ),
      ],
    );
  }
}
