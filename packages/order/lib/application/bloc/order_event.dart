part of 'order_bloc.dart';

@immutable
sealed class OrderEvent {}

final class LoadOrdersEvent implements OrderEvent {
  final String userId;
  final int pageRows;
  final int pageSize;

  const LoadOrdersEvent({
    required this.userId,
    required this.pageRows,
    required this.pageSize,
  });
}

class ConfirmOrderEvent implements OrderEvent {
  final CheckOutOrderEntity order;

  const ConfirmOrderEvent({
    required this.order,
  });
}

class ConfirmMultipleOrderEvent implements OrderEvent {
  final List<CheckOutOrderEntity> orders;

  const ConfirmMultipleOrderEvent({
    required this.orders,
  });
}
