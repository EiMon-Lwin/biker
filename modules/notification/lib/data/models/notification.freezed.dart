// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get redirectUrl => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get jsonData => throw _privateConstructorUsedError;
  bool? get read => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {String? title,
      String? body,
      DateTime? date,
      String? redirectUrl,
      String? role,
      String? type,
      String? jsonData,
      bool? read});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? date = freezed,
    Object? redirectUrl = freezed,
    Object? role = freezed,
    Object? type = freezed,
    Object? jsonData = freezed,
    Object? read = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      jsonData: freezed == jsonData
          ? _value.jsonData
          : jsonData // ignore: cast_nullable_to_non_nullable
              as String?,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationModelCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$_NotificationModelCopyWith(_$_NotificationModel value,
          $Res Function(_$_NotificationModel) then) =
      __$$_NotificationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? body,
      DateTime? date,
      String? redirectUrl,
      String? role,
      String? type,
      String? jsonData,
      bool? read});
}

/// @nodoc
class __$$_NotificationModelCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$_NotificationModel>
    implements _$$_NotificationModelCopyWith<$Res> {
  __$$_NotificationModelCopyWithImpl(
      _$_NotificationModel _value, $Res Function(_$_NotificationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? date = freezed,
    Object? redirectUrl = freezed,
    Object? role = freezed,
    Object? type = freezed,
    Object? jsonData = freezed,
    Object? read = freezed,
  }) {
    return _then(_$_NotificationModel(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      redirectUrl: freezed == redirectUrl
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      jsonData: freezed == jsonData
          ? _value.jsonData
          : jsonData // ignore: cast_nullable_to_non_nullable
              as String?,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationModel implements _NotificationModel {
  _$_NotificationModel(
      {this.title,
      this.body,
      this.date,
      this.redirectUrl,
      this.role,
      this.type,
      this.jsonData,
      this.read});

  factory _$_NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationModelFromJson(json);

  @override
  final String? title;
  @override
  final String? body;
  @override
  final DateTime? date;
  @override
  final String? redirectUrl;
  @override
  final String? role;
  @override
  final String? type;
  @override
  final String? jsonData;
  @override
  final bool? read;

  @override
  String toString() {
    return 'NotificationModel(title: $title, body: $body, date: $date, redirectUrl: $redirectUrl, role: $role, type: $type, jsonData: $jsonData, read: $read)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.jsonData, jsonData) ||
                other.jsonData == jsonData) &&
            (identical(other.read, read) || other.read == read));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, body, date, redirectUrl, role, type, jsonData, read);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationModelCopyWith<_$_NotificationModel> get copyWith =>
      __$$_NotificationModelCopyWithImpl<_$_NotificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationModelToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  factory _NotificationModel(
      {final String? title,
      final String? body,
      final DateTime? date,
      final String? redirectUrl,
      final String? role,
      final String? type,
      final String? jsonData,
      final bool? read}) = _$_NotificationModel;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationModel.fromJson;

  @override
  String? get title;
  @override
  String? get body;
  @override
  DateTime? get date;
  @override
  String? get redirectUrl;
  @override
  String? get role;
  @override
  String? get type;
  @override
  String? get jsonData;
  @override
  bool? get read;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationModelCopyWith<_$_NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
