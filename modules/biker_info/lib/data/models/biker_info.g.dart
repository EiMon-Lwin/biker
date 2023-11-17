// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biker_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BikerInfoModelImpl _$$BikerInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$BikerInfoModelImpl(
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      joinDate: DateTime.parse(json['joinDate'] as String),
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      nrc: json['nrc'] as String?,
      level: json['level'] as String,
      profileImage: json['profileImage'] as String,
      areaId: json['areaId'] as num,
      areaName: json['areaName'] as String,
      zoneId: json['zoneId'] as num,
      zoneName: json['zoneName'] as String,
      basicSalary: json['basicSalary'] as num,
      allowance: json['allowance'] as num,
      miscUsage: json['miscUsage'] as num,
      deposit: json['deposit'] as num,
      permenant: json['permenant'] as bool,
      note: json['note'] as String?,
      cashCollect: json['cashCollect'] as num,
      status: json['status'] as bool,
      creditAmt: json['creditAmt'] as num?,
      checkInSchedule: json['checkInSchedule'] == null
          ? null
          : ScheduleModel.fromJson(
              json['checkInSchedule'] as Map<String, dynamic>),
      earning: json['earning'] as num,
      earningWayCount: json['earningWayCount'] as num,
      creditHold: json['creditHold'] as bool?,
      credit: json['credit'] as num,
      creditUsage: json['creditUsage'] as num?,
      dailyCreditLimit: json['dailyCreditLimit'] as num?,
      dailyCreditUsage: json['dailyCreditUsage'] as num?,
      wallet: json['wallet'] as num?,
      codHold: json['codHold'] as bool?,
      osmUrl: json['osmUrl'] as String?,
      isMaintance: json['isMaintance'] as bool?,
      maintanceMessage: json['maintanceMessage'] as String?,
      assemblyLat: json['assemblyLat'] as num,
      assemblyLong: json['assemblyLong'] as num,
    );

Map<String, dynamic> _$$BikerInfoModelImplToJson(
        _$BikerInfoModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userName': instance.userName,
      'joinDate': instance.joinDate.toIso8601String(),
      'fullName': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'nrc': instance.nrc,
      'level': instance.level,
      'profileImage': instance.profileImage,
      'areaId': instance.areaId,
      'areaName': instance.areaName,
      'zoneId': instance.zoneId,
      'zoneName': instance.zoneName,
      'basicSalary': instance.basicSalary,
      'allowance': instance.allowance,
      'miscUsage': instance.miscUsage,
      'deposit': instance.deposit,
      'permenant': instance.permenant,
      'note': instance.note,
      'cashCollect': instance.cashCollect,
      'status': instance.status,
      'creditAmt': instance.creditAmt,
      'checkInSchedule': instance.checkInSchedule,
      'earning': instance.earning,
      'earningWayCount': instance.earningWayCount,
      'creditHold': instance.creditHold,
      'credit': instance.credit,
      'creditUsage': instance.creditUsage,
      'dailyCreditLimit': instance.dailyCreditLimit,
      'dailyCreditUsage': instance.dailyCreditUsage,
      'wallet': instance.wallet,
      'codHold': instance.codHold,
      'osmUrl': instance.osmUrl,
      'isMaintance': instance.isMaintance,
      'maintanceMessage': instance.maintanceMessage,
      'assemblyLat': instance.assemblyLat,
      'assemblyLong': instance.assemblyLong,
    };
