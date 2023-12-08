import 'package:domain/entities/entities.dart';
import 'package:extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ScheduleWidget extends StatelessWidget {
  final ScheduleEntity schedule;

  const ScheduleWidget({Key? key, required this.schedule}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scheduleName = schedule.scheduleName;
    final scheduleId = schedule.scheduleId;
    final startSchedule = schedule.startSchedule;
    final endSchedule = schedule.endSchedule;

    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            scheduleName.toString(),
            style: context.theme.textTheme.titleMedium,
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    DateFormat("dd, MMM").format(DateTime.parse(scheduleId)),
                    style: context.theme.textTheme.titleMedium?.copyWith(
                      color: context.theme.primaryColor,
                    ),
                  ),
                  Text(
                    DateFormat("E").format(DateTime.parse(scheduleId)),
                    style: context.theme.textTheme.titleSmall,
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      startSchedule.dayTimeString(),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "~",
                    ),
                  ),
                  Center(
                    child: Text(
                      endSchedule.dayTimeString(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
