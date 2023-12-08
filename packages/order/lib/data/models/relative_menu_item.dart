import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/domain.dart';

part 'relative_menu_item.freezed.dart';
part 'relative_menu_item.g.dart';

@freezed
class RelativeMenuItemModel extends RelativeMenuItemEntity with _$RelativeMenuItemModel {
  factory RelativeMenuItemModel({
    required final String itemId,
    final String? itemName,
    final String? itemNameMM,
    final String? image,
    final num? containerCharges,
    final num? contractPrice,
    final num? price,
    final num? discountPercent,
    final num? onlinePrice,
  }) = _RelativeMenuItemModel;

  factory RelativeMenuItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_RelativeMenuItemModelFromJson(json);

  factory RelativeMenuItemModel.fromEntity(RelativeMenuItemEntity entity) =>
      RelativeMenuItemModel(
        itemId: entity.itemId,
        itemName: entity.itemName,
        itemNameMM: entity.itemNameMM,
        image: entity.image,
        containerCharges: entity.containerCharges,
        contractPrice: entity.contractPrice,
        price: entity.price,
        discountPercent: entity.discountPercent,
        onlinePrice: entity.onlinePrice,
      );
}
