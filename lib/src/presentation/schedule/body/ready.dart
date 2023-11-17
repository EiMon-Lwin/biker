import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

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
    return const Column(
      children: [

      ],
    );
  }
}