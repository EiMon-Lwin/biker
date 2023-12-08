import 'package:biker_info/domain/entities/biker_info.dart';
import 'package:data/models/schedule/schedule_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'biker_info.freezed.dart';
part 'biker_info.g.dart';

@freezed
class BikerInfoModel extends BikerInfoEntity with _$BikerInfoModel {
  factory BikerInfoModel({
    required final String userId,
    required final String userName,
    required final DateTime joinDate,
    required final String fullName,
    required final String email,
    required final String phone,
    final String? nrc,
    required final String level,
    required final String profileImage,
    required final num areaId,
    required final String areaName,
    required final num zoneId,
    required final String zoneName,
    required final num basicSalary,
    required final num allowance,
    required final num miscUsage,
    required final num deposit,
    required final bool permenant,
    final String? note,
    required final num cashCollect,
    required final bool status,
    final num? creditAmt,
    final ScheduleModel? checkInSchedule,
    required final num earning,
    required final num earningWayCount,
    final bool? creditHold,
    required final num credit,
    final num? creditUsage,
    final num? dailyCreditLimit,
    final num? dailyCreditUsage,
    final num? wallet,
    final bool? codHold,
    final String? osmUrl,
    final bool? isMaintance,
    final String? maintanceMessage,
    required final num assemblyLat,
    required final num assemblyLong,
  }) = _BikerInfoModel;

  factory BikerInfoModel.fromJson(Map<String, dynamic> json) =>
      _$BikerInfoModelFromJson(json);
}
