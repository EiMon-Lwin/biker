import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../data/data.dart';
import '../../domain/domain.dart';

part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository repository;

  OrderBloc(
    this.repository,
  ) : super(OrderPageInitial()) {
    on<LoadOrdersEvent>(_onLoadOrdersEvent);
    on<ConfirmOrderEvent>(_onConfirmOrderEvent);
  }

  void Function() _callbackForConfirmSuccess = () {};
  void registerCallbackOnConfirmSuccess(void Function() callback) {
    _callbackForConfirmSuccess = callback;
  }

  FutureOr<void> _onLoadOrdersEvent(
    LoadOrdersEvent event,
    Emitter<OrderState> emit,
  ) async {
    emit(OrderPageLoading());
    await repository.getCurrentOrders(
      userId: event.userId,
      pageSize: event.pageSize,
      pageRow: event.pageRows,
    )
      ..onError((error) {
        error is SocketException
            ? emit(OrderPageNetworkError())
            : emit(OrderPageError());
      })
      ..onSuccess((data) {
        if (state is OrderPageReady) {
          emit((state as OrderPageReady).copyWith(
            currentOrders: data,
          ));
        } else {
          emit(OrderPageReady(
            currentOrders: data,
            pastOrders: [],
            userId: event.userId,
          ));
        }
      });
  }

  FutureOr<void> _onConfirmOrderEvent(
    ConfirmOrderEvent event,
    Emitter<OrderState> emit,
  ) async {
    final userId =
        state is OrderPageReady ? (state as OrderPageReady).userId : null;
    if (userId == null) return;

    final orderDetailsData = await repository.getOrder(
      event.order.orderId,
    );

    if (orderDetailsData is DataSuccess) {
      final orderDetails = orderDetailsData.data == null
          ? null
          : CheckOutOrderModel.fromEntity(orderDetailsData.data!);
      if (orderDetails == null) {
        print("order details getting failed.");
        return;
      }
      final confirmItems = orderDetails.toConfirmModels(confirmFlag: true);
      final result = await repository.shopConfirm(
        confirmItems,
      );

      if (result is DataSuccess) {
        print("order confirm success.");
        add(LoadOrdersEvent(
          userId: userId,
          pageRows: 10,
          pageSize: 0,
        ));
        _callbackForConfirmSuccess();
      } else {
        print("order confirm failed.");
      }
    } else {
      print("Getting order details failed");
    }
  }
}
