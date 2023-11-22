import 'package:biker/src/presentation/presentation.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:ui_kit/status_message_box/status_message_box.dart';

class SchedulePageError extends StatelessWidget {
  final void Function() onReloadPressed;

  const SchedulePageError({
    super.key,
    required this.onReloadPressed,
  });

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        StatusMessageBox(
          title: localeApi.tr(resourceStrings.lblSomethingWentWrong),
          subtitle: "There's an error with your request. Please try again.",
          ctaWidget: Center(
            child: GeneralButton(
              label: localeApi.tr(resourceStrings.lblTryAgainIn),
              onPressed: onReloadPressed,
            ),
          ),
        )
      ],
    );
  }
}
