import 'package:biker/src/presentation/schedule/widgets/schedule_items.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';

class SchedulePageReady extends StatelessWidget {
  final bool showCurrentSchedules;
  final List<ScheduleEntity> nextSchedules;
  final List<ScheduleEntity> currentSchedules;

  const SchedulePageReady({
    super.key,
    this.showCurrentSchedules = false,
    required this.currentSchedules,
    required this.nextSchedules,
  });

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showCurrentSchedules)
          ScheduleItems(
            title: localeApi.tr(resourceStrings.lblAvailableSchedules),
            items: currentSchedules,
          ),
        ScheduleItems(
          title: localeApi.tr(resourceStrings.lblAvailableSchedules),
          items: nextSchedules,
        ),
      ],
    );
  }
}
