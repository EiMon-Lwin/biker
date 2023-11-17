import 'package:flutter/material.dart';

void dismissKeyBoard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);

  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}

bool isKeyboardOpened(BuildContext context) {
  return MediaQuery.of(context).viewInsets.bottom != 0;
}

class KeyboardDismissWrapper extends StatelessWidget {
  final void Function()? onDismissed;
  final Widget child;
  final bool dismissTapGesture;
  const KeyboardDismissWrapper({
    super.key,
    this.dismissTapGesture = true,
    this.child = const SizedBox.shrink(),
    this.onDismissed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !dismissTapGesture ? null:  () {
        dismissKeyBoard(context);
        onDismissed?.call();
      },
      onPanDown: (details) {
        dismissKeyBoard(context);
        onDismissed?.call();
      },
      child: child,
    );
  }
}