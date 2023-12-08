import 'package:domain/domain.dart';

class DateModel extends DateVO {
  const DateModel(final String value) : super(value);

  factory DateModel.fromJson(Map<String, dynamic> json) {
    return DateModel(json["value"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "value": value,
    };
  }
}
