import 'package:biker/src/presentation/schedule/widgets/schedule_widget.dart';
import 'package:biker/src/utils/context_extension.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

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
        ...items.map((e) => ScheduleWidget(schedule: e)),
      ],
    );
  }
}