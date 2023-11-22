part of 'order_bloc.dart';

@immutable
sealed class OrderState {}

final class OrderPageInitial implements OrderState {}

final class OrderPageLoading implements OrderState {}

final class OrderPageError implements OrderState {}

final class OrderPageNetworkError implements OrderState {}

final class OrderPageReady extends Equatable implements OrderState  {
  final List<CheckOutOrderEntity> currentOrders;
  final List<CheckOutOrderEntity> pastOrders;
  final String userId;

  OrderPageReady({
    this.currentOrders = const [],
    this.pastOrders = const [],
    required this.userId,
  });

  OrderPageReady copyWith({
    final List<CheckOutOrderEntity>? currentOrders,
    final List<CheckOutOrderEntity>? pastOrders,
    final String? userId,
  }) {
    return OrderPageReady(
      currentOrders: currentOrders ?? this.currentOrders,
      pastOrders: pastOrders ?? this.pastOrders,
      userId: userId ?? this.userId,
    );
  }
  
  @override
  List<Object?> get props => [currentOrders, pastOrders, userId];
}
