// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderStatusModel _$OrderStatusModelFromJson(Map<String, dynamic> json) {
  return _OrderStatusModel.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusModel {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatusModelCopyWith<OrderStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusModelCopyWith<$Res> {
  factory $OrderStatusModelCopyWith(
          OrderStatusModel value, $Res Function(OrderStatusModel) then) =
      _$OrderStatusModelCopyWithImpl<$Res, OrderStatusModel>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$OrderStatusModelCopyWithImpl<$Res, $Val extends OrderStatusModel>
    implements $OrderStatusModelCopyWith<$Res> {
  _$OrderStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderStatusModelCopyWith<$Res>
    implements $OrderStatusModelCopyWith<$Res> {
  factory _$$_OrderStatusModelCopyWith(
          _$_OrderStatusModel value, $Res Function(_$_OrderStatusModel) then) =
      __$$_OrderStatusModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_OrderStatusModelCopyWithImpl<$Res>
    extends _$OrderStatusModelCopyWithImpl<$Res, _$_OrderStatusModel>
    implements _$$_OrderStatusModelCopyWith<$Res> {
  __$$_OrderStatusModelCopyWithImpl(
      _$_OrderStatusModel _value, $Res Function(_$_OrderStatusModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_OrderStatusModel(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderStatusModel implements _OrderStatusModel {
  _$_OrderStatusModel(this.value);

  factory _$_OrderStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderStatusModelFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'OrderStatusModel(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderStatusModel &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderStatusModelCopyWith<_$_OrderStatusModel> get copyWith =>
      __$$_OrderStatusModelCopyWithImpl<_$_OrderStatusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderStatusModelToJson(
      this,
    );
  }
}

abstract class _OrderStatusModel implements OrderStatusModel {
  factory _OrderStatusModel(final String value) = _$_OrderStatusModel;

  factory _OrderStatusModel.fromJson(Map<String, dynamic> json) =
      _$_OrderStatusModel.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStatusModelCopyWith<_$_OrderStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}
