import 'package:domain/entities/time/off_day.dart';

class WeekDayVO implements OffDay {
  final String id;

  const WeekDayVO(this.id);

  static const String _lblMon = "Mon";
  static const String _lblTue = "Tue";
  static const String _lblWed = "Wed";
  static const String _lblThu = "Thu";
  static const String _lblFri = "Fri";
  static const String _lblSat = "Sat";
  static const String _lblSun = "Sun";

  static const int _weekDayMon = 1;
  static const int _weekDayTue = 2;
  static const int _weekDayWed = 3;
  static const int _weekDayThu = 4;
  static const int _weekDayFri = 5;
  static const int _weekDaySat = 6;
  static const int _weekDaySun = 7;

  int get weekDay => {
        _lblMon: _weekDayMon,
        _lblTue: _weekDayTue,
        _lblWed: _weekDayWed,
        _lblThu: _weekDayThu,
        _lblFri: _weekDayFri,
        _lblSat: _weekDaySat,
        _lblSun: _weekDaySun,
      }[id]!;

  @override
  bool get isCurrentlyOff => DateTime.now().weekday == weekDay;

  @override
  bool isOffOn(DateTime dateTime) => dateTime.weekday == weekDay;

  static const WeekDayVO mon = WeekDayVO(_lblMon);
  static const WeekDayVO tue = WeekDayVO(_lblTue);
  static const WeekDayVO wed = WeekDayVO(_lblWed);
  static const WeekDayVO thu = WeekDayVO(_lblThu);
  static const WeekDayVO fri = WeekDayVO(_lblFri);
  static const WeekDayVO sat = WeekDayVO(_lblSat);
  static const WeekDayVO sun = WeekDayVO(_lblSun);
}
