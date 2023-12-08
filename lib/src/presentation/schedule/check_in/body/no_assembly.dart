import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:ui_kit/ui_kit.dart';

class CheckInNoAssembly extends StatelessWidget {
  final void Function() onReload;
  const CheckInNoAssembly({
    super.key,
    required this.onReload,
  });

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resouceStrings = inject<ResourceStrings>();

    return Center(
      child: StatusMessageBox(
        subtitle: "Assembly Location Not Found!",
        ctaWidget: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              GeneralButton(
                label: localeApi.tr(resouceStrings.lblReload),
                onPressed: onReload,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
