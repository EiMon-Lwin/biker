import 'package:biker/src/utils/context_extension.dart';
import 'package:core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:order/domain/entities/checkout_order.dart';
import 'package:resource_strings/resource_strings.dart';

import '../widgets/order_item.dart';

class OrderPageReadyWidget extends StatelessWidget {
  final List<CheckOutOrderEntity> currentOrders;
  final List<CheckOutOrderEntity> pastOrders;

  const OrderPageReadyWidget({
    super.key,
    required this.currentOrders,
    required this.pastOrders,
  });

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    return Column(
      children: [
        Text(
          localeApi.tr(resourceStrings.lblCurrentOrders),
          style: context.theme.textTheme.titleLarge,
        ),
        ...currentOrders.map((orderItem) => CurrentOrderWidget(
              orderItem: orderItem,
            ))
      ],
    );
  }
}
