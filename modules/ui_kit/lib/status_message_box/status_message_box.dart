import 'dart:math';

import 'package:flutter/material.dart';
import 'package:extensions/context.dart';

class StatusMessageBox extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final ImageProvider<Object>? image;
  final Widget? ctaWidget;
  final EdgeInsets? padding;

  const StatusMessageBox({
    super.key,
    this.padding,
    this.title,
    this.subtitle,
    this.image,
    this.ctaWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (image != null) ...[
            Container(
              width: min(min(context.width, context.height) * 0.5, 200),
              height: min(min(context.width, context.height) * 0.5, 200),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: image!,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
          SizedBox(
            width: min(min(context.width, context.height) * 0.75, 280),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: context.theme.textTheme.titleSmall,
                children: [
                  if (title != null)
                    TextSpan(
                      text: title,
                      style: context.theme.textTheme.titleLarge?.copyWith(
                        color: context.theme.textTheme.bodySmall?.color
                            ?.withOpacity(0.8),
                      ),
                    ),
                  TextSpan(
                    text: subtitle,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
