import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';

class DistanceInfo extends StatelessWidget {
  final double currentDistance;

  const DistanceInfo({
    super.key,
    required this.currentDistance,
  });

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceString = inject<ResourceStrings>();

    return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: context.theme.scaffoldBackgroundColor,
      ),
      child: Text(
        localeApi.tr(resourceString.lblDistanceAway, namedArgs: {
          "distance": currentDistance.toStringAsFixed(2),
        }),
      ),
    );
  }
}
