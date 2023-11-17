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
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          color: Theme.of(context).brightness == Brightness.dark ? UIConstant.bgDark : UIConstant.bgWhite,
          boxShadow: [
            if(Theme.of(context).brightness == Brightness.light)BoxShadow(
              color:Colors.grey.shade300,
              spreadRadius: 1,
              blurRadius: 3,
            ),
          ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            scheduleName.toString(),
            style: UIConstant.minititle,
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
                    style: UIConstant.title.copyWith(
                      fontWeight: FontWeight.normal,
                      color: UIConstant.orange,
                    ),
                  ),
                  Text(
                    DateFormat("E").format(scheduleId),
                    style: UIConstant.minititle.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      startSchedule,
                      style: UIConstant.minititle,
                    ),
                  ),
                  Center(
                    child: Text(
                      "~",
                      style: UIConstant.title,
                    ),
                  ),
                  Center(
                    child: Text(
                      endSchedule,
                      style: UIConstant.minititle,
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
