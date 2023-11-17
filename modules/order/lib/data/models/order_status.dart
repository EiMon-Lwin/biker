import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/domain.dart';

part 'order_status.freezed.dart';
part 'order_status.g.dart';

@freezed
class OrderStatusModel extends OrderStatusEntity with _$OrderStatusModel {
  factory OrderStatusModel(final String value) = _OrderStatusModel;

  factory OrderStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderStatusModelFromJson(json);
}
