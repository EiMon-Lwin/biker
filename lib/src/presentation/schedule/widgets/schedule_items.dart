import 'package:biker/src/presentation/schedule/widgets/schedule_widget.dart';
import 'package:biker/src/utils/context_extension.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:extensions/time_model_ext.dart';
import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';

class ScheduleItems extends StatelessWidget {
  final String title;
  final List<ScheduleEntity> items;
  const ScheduleItems({
    super.key,
    required this.title,
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.theme.textTheme.titleMedium,
        ),
        ...items.map((e) => ScheduleWidget(
          scheduleName: e.scheduleName,
          scheduleId: e.scheduleId,
          startSchedule: e.startSchedule.asTimeOfDay().format(context),
          endSchedule: e.endSchedule.asTimeOfDay().format(context),
        ))
      ],
    );
  }
}