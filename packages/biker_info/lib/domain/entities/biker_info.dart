import 'package:domain/domain.dart';

class BikerInfoEntity {
  final String userId;
  final String userName;
  final DateTime joinDate;
  final String fullName;
  final String email;
  final String phone;
  final String? nrc;
  final String level;
  final String profileImage;
  final num areaId;
  final String areaName;
  final num zoneId;
  final String zoneName;
  final num basicSalary;
  final num allowance;
  final num miscUsage;
  final num deposit;
  final bool permenant;
  final String? note;
  final num cashCollect;
  final bool status;
  final num? creditAmt;
  final ScheduleEntity? checkInSchedule;
  final num earning;
  final num earningWayCount;
  final bool? creditHold;
  final num credit;
  final num? creditUsage;
  final num? dailyCreditLimit;
  final num? dailyCreditUsage;
  final num assemblyLat;
  final num assemblyLong;
  final num? wallet;
  final bool? codHold;
  final String? osmUrl;
  final bool? isMaintance;
  final String? maintanceMessage;

  const BikerInfoEntity({
    required this.userId,
    required this.userName,
    required this.joinDate,
    required this.fullName,
    required this.email,
    required this.phone,
    this.nrc,
    required this.level,
    required this.profileImage,
    required this.areaId,
    required this.areaName,
    required this.zoneId,
    required this.zoneName,
    required this.basicSalary,
    required this.allowance,
    required this.miscUsage,
    required this.deposit,
    required this.permenant,
    this.note,
    required this.cashCollect,
    required this.status,
    this.creditAmt,
    this.checkInSchedule,
    required this.earning,
    required this.earningWayCount,
    this.creditHold,
    required this.credit,
    this.creditUsage,
    this.dailyCreditLimit,
    this.dailyCreditUsage,
    this.wallet,
    this.codHold,
    this.osmUrl,
    this.isMaintance,
    this.maintanceMessage,
    required this.assemblyLat,
    required this.assemblyLong,
  });
}
