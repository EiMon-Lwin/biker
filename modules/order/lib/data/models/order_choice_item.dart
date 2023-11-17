import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/domain.dart';

part 'order_choice_item.freezed.dart';
part 'order_choice_item.g.dart';

@freezed
class OrderChoiceItemModel extends OrderChoiceItemEntity
    with _$OrderChoiceItemModel {
  factory OrderChoiceItemModel({
    required final String orderId,
    required final String itemId,
    required final String uniqueId,
    required final num? citemid,
    final String? citemName,
    final num? contractPrice,
    final num? price,
    final num? onlinePrice,
  }) = _OrderChoiceItemModel;

  factory OrderChoiceItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderChoiceItemModelFromJson(json);

  factory OrderChoiceItemModel.fromEntity(OrderChoiceItemEntity entity) =>
      OrderChoiceItemModel(
        orderId: entity.orderId,
        itemId: entity.itemId,
        uniqueId: entity.uniqueId,
        citemid: entity.citemid,
        citemName: entity.citemName,
        contractPrice: entity.contractPrice,
        price: entity.price,
        onlinePrice: entity.onlinePrice,
      );
}
