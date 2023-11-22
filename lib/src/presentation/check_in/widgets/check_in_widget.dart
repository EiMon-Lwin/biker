import 'package:biker_info/biker_info.dart';
import 'package:core/core.dart';
import 'package:domain/entities/schedule/schedule_entity.dart';
import 'package:extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:ui_kit/ui_kit.dart';

class _NotCheckedInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    return GreyedBox(
        child: StatusMessageBox(
      subtitle: localeApi.tr(resourceStrings.lblNoCheckInSchedule),
    ));
  }
}

class _CheckInScheduleWidget extends StatelessWidget {
  final ScheduleEntity schedule;
  const _CheckInScheduleWidget({required this.schedule});

  @override
  Widget build(BuildContext context) {
    final scheduleName = schedule.scheduleName;
    final scheduleId = schedule.scheduleId;
    final startSchedule = schedule.startSchedule.dayTimeString();
    final endSchedule = schedule.endSchedule.dayTimeString();

    return GreyedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            scheduleName.toString(),
            style: context.theme.textTheme.titleMedium,
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    DateFormat("dd, MMM").format(scheduleId),
                    style: context.theme.textTheme.titleMedium?.copyWith(
                      color: context.theme.primaryColor,
                    ),
                  ),
                  Text(
                    DateFormat("E").format(scheduleId),
                    style: context.theme.textTheme.titleSmall,
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      startSchedule,
                      style: context.theme.textTheme.titleSmall,
                    ),
                  ),
                  Center(
                    child: Text(
                      "~",
                      style: context.theme.textTheme.titleSmall,
                    ),
                  ),
                  Center(
                    child: Text(
                      endSchedule,
                      style: context.theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CheckInScheduleWidget extends StatelessWidget {
  const CheckInScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "${localeApi.tr(resourceStrings.lblUserCheckIn)} ${localeApi.tr(resourceStrings.lblSchedule)}",
          style: context.theme.textTheme.titleLarge,
        ),
        BlocBuilder<BikerInfoBloc, BikerInfoState>(
          bloc: inject(),
          builder: (context, state) {
            if (state is BikerInfoReady) {
              if (state.isCheckedIn) {
                return _CheckInScheduleWidget(
                  schedule: state.bikerInfo.checkInSchedule!,
                );
              }

              return _NotCheckedInWidget();
            }

            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
