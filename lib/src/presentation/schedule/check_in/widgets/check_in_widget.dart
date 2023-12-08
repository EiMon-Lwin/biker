import 'package:biker/src/presentation/schedule/schedules/widgets/schedule_widget.dart';
import 'package:biker_info/biker_info.dart';
import 'package:core/core.dart';
import 'package:domain/entities/schedule/schedule_entity.dart';
import 'package:extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      ),
    );
  }
}

class _CheckInLoadingWidget extends StatelessWidget {
  const _CheckInLoadingWidget({Key? key}) : super(key: key);

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

class _CheckInScheduleWidget extends StatelessWidget {
  final ScheduleEntity schedule;
  const _CheckInScheduleWidget({required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      decoration: BoxDecoration(
        color: context.theme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: context.theme.shadowColor.withOpacity(
            0.04,
          ),
        ),
      ),
      child: ScheduleWidget(
        schedule: schedule,
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

            if (state is BikerInfoInitial || state is BikerInfoLoading) {
              return const _CheckInLoadingWidget();
            }

            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
