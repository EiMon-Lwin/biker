import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/domain.dart';

part 'shop_confirm.freezed.dart';
part 'shop_confirm.g.dart';

@freezed
class ShopConfirmModel extends ShopConfirmEntity with _$ShopConfirmModel {
  factory ShopConfirmModel({
    required final String orderId,
    required final String itemId,
    required final String uniqueId,
    required final String shopId,
    required final bool confirmFlag,
  }) = _ShopConfirmModel;

  factory ShopConfirmModel.fromJson(Map<String, dynamic> json) =>
      _$ShopConfirmModelFromJson(json);

  factory ShopConfirmModel.fromEntity(ShopConfirmEntity entity) {
    return ShopConfirmModel(
      orderId: entity.orderId,
      itemId: entity.itemId,
      uniqueId: entity.uniqueId,
      shopId: entity.shopId,
      confirmFlag: entity.confirmFlag,
    );
  }
}
