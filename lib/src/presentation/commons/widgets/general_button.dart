import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralButton extends StatelessWidget {
  final String label;
  final TextStyle? labelStyle;
  final EdgeInsets? labelPadding;
  final double? cornerRadius;
  final Color? fillColor;
  final Color? borderColor;
  final void Function()? onPressed;
  final double? minWidth;
  final double? maxWidth;
  final double? height;
  final Widget? overrideChild;
  final bool isLoading;
  final Color? progressColor;

  const GeneralButton({
    super.key,
    this.label = '',
    this.labelStyle,
    this.labelPadding,
    this.fillColor,
    this.borderColor,
    this.cornerRadius,
    this.height,
    this.minWidth,
    this.maxWidth,
    this.onPressed,
    this.overrideChild,
    this.isLoading = false,
    this.progressColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    return InkWell(
      borderRadius: BorderRadius.circular(cornerRadius ?? 0),
      onTap: onPressed?.call,
      child: Container(
        height: height,
        padding: labelPadding ?? const EdgeInsets.fromLTRB(20, 8, 20, 8),
        constraints: BoxConstraints(
          minWidth: minWidth ?? 0,
          maxWidth: maxWidth ?? double.infinity,
        ),
        decoration: BoxDecoration(
          color: fillColor ?? theme.primaryColor,
          border: Border.all(
            color: borderColor ?? Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(cornerRadius ?? 8.0),
        ),
        alignment: Alignment.center,
        child: overrideChild ??
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: labelStyle ??
                      theme.textTheme.titleMedium?.copyWith(
                        color: theme.cardColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                if (isLoading) ...[
                  const SizedBox(width: 10.0),
                  SizedBox(
                    height: 18.0,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: CircularProgressIndicator(
                        color: progressColor ?? theme.scaffoldBackgroundColor,
                      ),
                    ),
                  )
                ]
              ],
            ),
      ),
    );
  }
}
