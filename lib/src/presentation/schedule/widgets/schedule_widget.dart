import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class ScheduleWidget extends StatelessWidget {
  final String scheduleName;
  final DateTime scheduleId;
  final String startSchedule;
  final String endSchedule;

  const ScheduleWidget({
    Key? key,
    required this.scheduleName,
    required this.scheduleId,
    required this.startSchedule,
    required this.endSchedule,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    DateFormat("dd, MMM").format(scheduleId),
                  ),
                  Text(
                    DateFormat("E").format(scheduleId),
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      startSchedule,
                    ),
                  ),
                  const Center(
                    child: Text(
                      "~",
                    ),
                  ),
                  Center(
                    child: Text(
                      endSchedule,
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
