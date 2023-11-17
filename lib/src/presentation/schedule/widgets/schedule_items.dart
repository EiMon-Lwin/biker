import 'package:biker/src/utils/context_extension.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';

class ScheduleItems extends StatelessWidget {
  final List<ScheduleEntity> items;
  const ScheduleItems({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          localeApi.tr(resourceStrings.lblNextSchedules),
          style: context.theme.textTheme.titleMedium,
        ),
      ],
    );
  }
}