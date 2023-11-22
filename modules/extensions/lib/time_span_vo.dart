import 'package:domain/domain.dart';
import 'package:intl/intl.dart';

extension TimeSpanVOExtensions on TimeSpanVO {
  String dayTimeString() {
    int min = totalMinutes.toInt() % 60;
    int hr = (totalMinutes.toInt() / 60).floor();
    String date = "$hr:$min" ;
    return DateFormat.jm().format(DateFormat("H:mm").parse(date));
  }
}