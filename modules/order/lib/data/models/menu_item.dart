import 'package:data/data.dart';

import '../../domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'order_choice_item.dart';
import 'relative_menu_item.dart';

part 'menu_item.freezed.dart';
part 'menu_item.g.dart';

@freezed
class MenuItemModel extends MenuItemEntity with _$MenuItemModel {
  factory MenuItemModel({
    required final String itemId,
    required final String shopId,
    final String? itemName,
    final String? itemNameMM,
    final String? itemDesc,
    final String? itemDescMM,
    final String? image,
    final String? shopName,
    final String? shopNameMM,
    final num? containerCharges,
    final num? qty,
    final num? contractPrice,
    final num? price,
    final num? onlinePrice,
    final String? specialRequest,
    final bool? shopConfirm,
    final bool? pickupFlag,
    final bool? halaFlag,
    final bool? popularFlag,
    final bool? activeStatus,
    final List<OrderChoiceItemModel>? choices,
    final List<RelativeMenuItemModel>? relativeItems,
    final TimeSpanModel? orderAt,
    final TimeSpanModel? untilOn,
  }) = _MenuItemModel;

  factory MenuItemModel.fromJson(Map<String, dynamic> json) => _$$_MenuItemModelFromJson(json);
}
