import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

extension TimeModelExtension on TimeSpanVO {
  TimeOfDay asTimeOfDay() {
    return TimeOfDay(
      hour: totalMinutes.toInt() ~/ 60,
      minute: totalMinutes.toInt() % 60,
    );
  }
}
