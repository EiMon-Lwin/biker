import 'package:domain/entities/time/off_day.dart';
import 'package:intl/intl.dart';

class DateVO implements OffDay {
  final String value;

  const DateVO(this.value);

  DateTime get dateTime => DateFormat(dateFormat).parse(value);

  static const String dateFormat = "dd/MM/yyyy";

  String get name {
    return value;
  }

  @override
  bool get isCurrentlyOff {
    final formatted = DateFormat(dateFormat).format(DateTime.now());
    return formatted == value;
  }

  @override
  bool isOffOn(DateTime dateTime) {
    final formatted = DateFormat(dateFormat).format(dateTime);
    return formatted == value;
  }
}
