// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleModel _$ScheduleModelFromJson(Map<String, dynamic> json) {
  return _ScheduleModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleModel {
  String get scheduleDetailId => throw _privateConstructorUsedError;
  DateTime? get scheduleId => throw _privateConstructorUsedError;
  String? get scheduleName => throw _privateConstructorUsedError;
  TimeSpanModel get startSchedule => throw _privateConstructorUsedError;
  TimeSpanModel get endSchedule => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleModelCopyWith<ScheduleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleModelCopyWith<$Res> {
  factory $ScheduleModelCopyWith(
          ScheduleModel value, $Res Function(ScheduleModel) then) =
      _$ScheduleModelCopyWithImpl<$Res, ScheduleModel>;
  @useResult
  $Res call(
      {String scheduleDetailId,
      DateTime? scheduleId,
      String? scheduleName,
      TimeSpanModel startSchedule,
      TimeSpanModel endSchedule});

  $TimeSpanModelCopyWith<$Res> get startSchedule;
  $TimeSpanModelCopyWith<$Res> get endSchedule;
}

/// @nodoc
class _$ScheduleModelCopyWithImpl<$Res, $Val extends ScheduleModel>
    implements $ScheduleModelCopyWith<$Res> {
  _$ScheduleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleDetailId = null,
    Object? scheduleId = freezed,
    Object? scheduleName = freezed,
    Object? startSchedule = null,
    Object? endSchedule = null,
  }) {
    return _then(_value.copyWith(
      scheduleDetailId: null == scheduleDetailId
          ? _value.scheduleDetailId
          : scheduleDetailId // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduleName: freezed == scheduleName
          ? _value.scheduleName
          : scheduleName // ignore: cast_nullable_to_non_nullable
              as String?,
      startSchedule: null == startSchedule
          ? _value.startSchedule
          : startSchedule // ignore: cast_nullable_to_non_nullable
              as TimeSpanModel,
      endSchedule: null == endSchedule
          ? _value.endSchedule
          : endSchedule // ignore: cast_nullable_to_non_nullable
              as TimeSpanModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeSpanModelCopyWith<$Res> get startSchedule {
    return $TimeSpanModelCopyWith<$Res>(_value.startSchedule, (value) {
      return _then(_value.copyWith(startSchedule: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimeSpanModelCopyWith<$Res> get endSchedule {
    return $TimeSpanModelCopyWith<$Res>(_value.endSchedule, (value) {
      return _then(_value.copyWith(endSchedule: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleModelImplCopyWith<$Res>
    implements $ScheduleModelCopyWith<$Res> {
  factory _$$ScheduleModelImplCopyWith(
          _$ScheduleModelImpl value, $Res Function(_$ScheduleModelImpl) then) =
      __$$ScheduleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String scheduleDetailId,
      DateTime? scheduleId,
      String? scheduleName,
      TimeSpanModel startSchedule,
      TimeSpanModel endSchedule});

  @override
  $TimeSpanModelCopyWith<$Res> get startSchedule;
  @override
  $TimeSpanModelCopyWith<$Res> get endSchedule;
}

/// @nodoc
class __$$ScheduleModelImplCopyWithImpl<$Res>
    extends _$ScheduleModelCopyWithImpl<$Res, _$ScheduleModelImpl>
    implements _$$ScheduleModelImplCopyWith<$Res> {
  __$$ScheduleModelImplCopyWithImpl(
      _$ScheduleModelImpl _value, $Res Function(_$ScheduleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleDetailId = null,
    Object? scheduleId = freezed,
    Object? scheduleName = freezed,
    Object? startSchedule = null,
    Object? endSchedule = null,
  }) {
    return _then(_$ScheduleModelImpl(
      scheduleDetailId: null == scheduleDetailId
          ? _value.scheduleDetailId
          : scheduleDetailId // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleId: freezed == scheduleId
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      scheduleName: freezed == scheduleName
          ? _value.scheduleName
          : scheduleName // ignore: cast_nullable_to_non_nullable
              as String?,
      startSchedule: null == startSchedule
          ? _value.startSchedule
          : startSchedule // ignore: cast_nullable_to_non_nullable
              as TimeSpanModel,
      endSchedule: null == endSchedule
          ? _value.endSchedule
          : endSchedule // ignore: cast_nullable_to_non_nullable
              as TimeSpanModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleModelImpl implements _ScheduleModel {
  _$ScheduleModelImpl(
      {required this.scheduleDetailId,
      this.scheduleId,
      this.scheduleName,
      required this.startSchedule,
      required this.endSchedule});

  factory _$ScheduleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleModelImplFromJson(json);

  @override
  final String scheduleDetailId;
  @override
  final DateTime? scheduleId;
  @override
  final String? scheduleName;
  @override
  final TimeSpanModel startSchedule;
  @override
  final TimeSpanModel endSchedule;

  @override
  String toString() {
    return 'ScheduleModel(scheduleDetailId: $scheduleDetailId, scheduleId: $scheduleId, scheduleName: $scheduleName, startSchedule: $startSchedule, endSchedule: $endSchedule)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleModelImpl &&
            (identical(other.scheduleDetailId, scheduleDetailId) ||
                other.scheduleDetailId == scheduleDetailId) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.scheduleName, scheduleName) ||
                other.scheduleName == scheduleName) &&
            (identical(other.startSchedule, startSchedule) ||
                other.startSchedule == startSchedule) &&
            (identical(other.endSchedule, endSchedule) ||
                other.endSchedule == endSchedule));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, scheduleDetailId, scheduleId,
      scheduleName, startSchedule, endSchedule);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleModelImplCopyWith<_$ScheduleModelImpl> get copyWith =>
      __$$ScheduleModelImplCopyWithImpl<_$ScheduleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduleModel implements ScheduleModel {
  factory _ScheduleModel(
      {required final String scheduleDetailId,
      final DateTime? scheduleId,
      final String? scheduleName,
      required final TimeSpanModel startSchedule,
      required final TimeSpanModel endSchedule}) = _$ScheduleModelImpl;

  factory _ScheduleModel.fromJson(Map<String, dynamic> json) =
      _$ScheduleModelImpl.fromJson;

  @override
  String get scheduleDetailId;
  @override
  DateTime? get scheduleId;
  @override
  String? get scheduleName;
  @override
  TimeSpanModel get startSchedule;
  @override
  TimeSpanModel get endSchedule;
  @override
  @JsonKey(ignore: true)
  _$$ScheduleModelImplCopyWith<_$ScheduleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}