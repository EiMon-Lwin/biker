import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';

class EarningsWidget extends StatelessWidget {
  final String? earningLabel;
  final num earningAmount;
  final String? cashCollectedLabel;
  final num cashCollected;
  
  const EarningsWidget({
    super.key,
    this.earningLabel,
    required this.earningAmount,
    this.cashCollectedLabel,
    required this.cashCollected,
  });

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localeApi.tr(resourceStrings.lblWalletAndEarnings),
          style: context.theme.textTheme.titleMedium,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Earnings",
                    style: context.theme.textTheme.bodySmall,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    NumberFormat("###,###,###,### MMK").format(earningAmount),
                    style: context.theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CashCollected",
                    style: context.theme.textTheme.bodySmall,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    NumberFormat("###,###,###,### MMK").format(cashCollected),
                    style: context.theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
