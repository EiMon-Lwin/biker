import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:extensions/extensions.dart';
import 'package:flutter/material.dart';

class RemoveButton extends StatelessWidget {
  final void Function() onPressed;
  
  const RemoveButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      onPressed: onPressed,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(14.0),
          border: Border.all(color: context.theme.shadowColor.withOpacity(0.04))
        ),
        child: const Icon(
          Icons.delete_rounded,
          color: Colors.red,
        ),
      ),
    );
  }
}
