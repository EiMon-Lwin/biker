import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralSnackBar extends StatelessWidget {
  final Duration duration;
  final IconData? iconData;
  final String? message;
  final String? title;

  const GeneralSnackBar({
    super.key,
    this.message,
    this.title,
    this.iconData,
    this.duration = const Duration(seconds: 3),
  });

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      duration: duration,
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? context.theme.appBarTheme.backgroundColor
          : context.theme.primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                iconData ?? Icons.info_outline,
                size: 30,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.red
                    : Colors.purple.shade700,
              ),
              Text(
                title ?? "Alert",
                style: context.theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          if (message != null) ...[
            const SizedBox(height: 5),
            Text(
              message!,
              style: context.theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ]
        ],
      ),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: Get.height - (180),
        // bottom: deviceHeight - (oneUnitHeight * 130),
      ),
    );
  }
}
