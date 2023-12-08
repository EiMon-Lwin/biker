import 'package:biker/src/presentation/schedule/schedules/widgets/schedule_widget.dart';
import 'package:biker/src/utils/context_extension.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class ScheduleItems extends StatelessWidget {
  final String title;
  final List<ScheduleEntity> items;

  const ScheduleItems({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      decoration: BoxDecoration(
        color: context.theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: context.theme.shadowColor.withOpacity(
            0.04,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...items.map((e) => ScheduleWidget(schedule: e)),
        ],
      ),
    );
  }
}
