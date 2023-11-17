import 'package:formatter_api/formatter_api.dart';
import 'package:intl/intl.dart';

class FormatterApiImpl implements FormatterApi {
  @override
  String formatDateMonth(DateTime dateTime) {
    return DateFormat("dd, MMM").format(dateTime);
  }
  
  @override
  String formatWeekDay(DateTime dateTime) {
    return DateFormat("E").format(dateTime);
  }
}