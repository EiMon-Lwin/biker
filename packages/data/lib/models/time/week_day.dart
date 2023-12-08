import 'package:domain/domain.dart';

class WeekDayModel extends WeekDayVO {
  const WeekDayModel(final String id) : super(id);

  factory WeekDayModel.fromJson(Map<String, dynamic> json) {
    return WeekDayModel(json["id"]);
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
    };
  }
}
