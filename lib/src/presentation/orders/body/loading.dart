import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:ui_kit/ui_kit.dart';

class OrderPageLoadingWidget extends StatelessWidget {
  const OrderPageLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    return GreyedBox(
      child: Column(
        children: [
          StatusMessageBox(
            subtitle: "${localeApi.tr(resourceStrings.lblLoading)} ...",
            padding: const EdgeInsets.only(bottom: 10),
          ),
          const LinearProgressiveLoadingWidget(),
        ],
      ),
    );
  }
}
