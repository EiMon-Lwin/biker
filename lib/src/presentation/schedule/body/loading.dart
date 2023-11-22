import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:ui_kit/ui_kit.dart';

class SchedulePageLoading extends StatelessWidget {
  const SchedulePageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    return GreyedBox(
      child: Column(
        children: [
          const LinearProgressiveLoadingWidget(),
          StatusMessageBox(
            subtitle: localeApi.tr(resourceStrings.lblLoading),
          ),
        ],
      ),
    );
  }
}
