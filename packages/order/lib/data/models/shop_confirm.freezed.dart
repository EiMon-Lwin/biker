// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_confirm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopConfirmModel _$ShopConfirmModelFromJson(Map<String, dynamic> json) {
  return _ShopConfirmModel.fromJson(json);
}

/// @nodoc
mixin _$ShopConfirmModel {
  String get orderId => throw _privateConstructorUsedError;
  String get itemId => throw _privateConstructorUsedError;
  String get uniqueId => throw _privateConstructorUsedError;
  String get shopId => throw _privateConstructorUsedError;
  bool get confirmFlag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopConfirmModelCopyWith<ShopConfirmModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopConfirmModelCopyWith<$Res> {
  factory $ShopConfirmModelCopyWith(
          ShopConfirmModel value, $Res Function(ShopConfirmModel) then) =
      _$ShopConfirmModelCopyWithImpl<$Res, ShopConfirmModel>;
  @useResult
  $Res call(
      {String orderId,
      String itemId,
      String uniqueId,
      String shopId,
      bool confirmFlag});
}

/// @nodoc
class _$ShopConfirmModelCopyWithImpl<$Res, $Val extends ShopConfirmModel>
    implements $ShopConfirmModelCopyWith<$Res> {
  _$ShopConfirmModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? itemId = null,
    Object? uniqueId = null,
    Object? shopId = null,
    Object? confirmFlag = null,
  }) {
    return _then(_value.copyWith(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      confirmFlag: null == confirmFlag
          ? _value.confirmFlag
          : confirmFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopConfirmModelCopyWith<$Res>
    implements $ShopConfirmModelCopyWith<$Res> {
  factory _$$_ShopConfirmModelCopyWith(
          _$_ShopConfirmModel value, $Res Function(_$_ShopConfirmModel) then) =
      __$$_ShopConfirmModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderId,
      String itemId,
      String uniqueId,
      String shopId,
      bool confirmFlag});
}

/// @nodoc
class __$$_ShopConfirmModelCopyWithImpl<$Res>
    extends _$ShopConfirmModelCopyWithImpl<$Res, _$_ShopConfirmModel>
    implements _$$_ShopConfirmModelCopyWith<$Res> {
  __$$_ShopConfirmModelCopyWithImpl(
      _$_ShopConfirmModel _value, $Res Function(_$_ShopConfirmModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? itemId = null,
    Object? uniqueId = null,
    Object? shopId = null,
    Object? confirmFlag = null,
  }) {
    return _then(_$_ShopConfirmModel(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      itemId: null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueId: null == uniqueId
          ? _value.uniqueId
          : uniqueId // ignore: cast_nullable_to_non_nullable
              as String,
      shopId: null == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as String,
      confirmFlag: null == confirmFlag
          ? _value.confirmFlag
          : confirmFlag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopConfirmModel implements _ShopConfirmModel {
  _$_ShopConfirmModel(
      {required this.orderId,
      required this.itemId,
      required this.uniqueId,
      required this.shopId,
      required this.confirmFlag});

  factory _$_ShopConfirmModel.fromJson(Map<String, dynamic> json) =>
      _$$_ShopConfirmModelFromJson(json);

  @override
  final String orderId;
  @override
  final String itemId;
  @override
  final String uniqueId;
  @override
  final String shopId;
  @override
  final bool confirmFlag;

  @override
  String toString() {
    return 'ShopConfirmModel(orderId: $orderId, itemId: $itemId, uniqueId: $uniqueId, shopId: $shopId, confirmFlag: $confirmFlag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopConfirmModel &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId) &&
            (identical(other.uniqueId, uniqueId) ||
                other.uniqueId == uniqueId) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.confirmFlag, confirmFlag) ||
                other.confirmFlag == confirmFlag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, itemId, uniqueId, shopId, confirmFlag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopConfirmModelCopyWith<_$_ShopConfirmModel> get copyWith =>
      __$$_ShopConfirmModelCopyWithImpl<_$_ShopConfirmModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopConfirmModelToJson(
      this,
    );
  }
}

abstract class _ShopConfirmModel implements ShopConfirmModel {
  factory _ShopConfirmModel(
      {required final String orderId,
      required final String itemId,
      required final String uniqueId,
      required final String shopId,
      required final bool confirmFlag}) = _$_ShopConfirmModel;

  factory _ShopConfirmModel.fromJson(Map<String, dynamic> json) =
      _$_ShopConfirmModel.fromJson;

  @override
  String get orderId;
  @override
  String get itemId;
  @override
  String get uniqueId;
  @override
  String get shopId;
  @override
  bool get confirmFlag;
  @override
  @JsonKey(ignore: true)
  _$$_ShopConfirmModelCopyWith<_$_ShopConfirmModel> get copyWith =>
      throw _privateConstructorUsedError;
}
