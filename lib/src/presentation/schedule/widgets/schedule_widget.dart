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
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            scheduleName.toString(),
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
