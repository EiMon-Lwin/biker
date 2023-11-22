import 'package:core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:ui_kit/ui_kit.dart';

class OrderPageEmpty extends StatelessWidget {
  const OrderPageEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    return GreyedBox(
      child: StatusMessageBox(
        subtitle: localeApi.tr(resourceStrings.lblThereIsNoOrders),
      ),
    );
  }
}
