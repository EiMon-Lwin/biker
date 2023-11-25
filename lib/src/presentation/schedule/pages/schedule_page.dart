import 'package:biker/src/presentation/schedule/body/empty.dart';
import 'package:biker/src/presentation/schedule/body/error.dart';
import 'package:biker/src/presentation/schedule/body/ready.dart';
import 'package:biker/src/utils/context_extension.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:schedule/application/schedule_bloc/schedule_bloc.dart';

import '../body/loading.dart';

class SchedulesPage extends StatelessWidget {
  const SchedulesPage({super.key});
  
  static const String routeName = "schedule";
  static const String routePath = "/$routeName";

  @override
  Widget build(BuildContext context) {
    final bloc = inject<ScheduleBloc>();
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    bloc.add(const LoadAllSchedulesEvent());

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          localeApi.tr(resourceStrings.lblNextSchedules),
          style: context.theme.textTheme.titleLarge,
        ),
        BlocBuilder<ScheduleBloc, ScheduleState>(
          bloc: bloc,
          builder: (context, state) {
            if (state is ScheduleStateReady) {
              if (state.nextSchedules.isEmpty) {
                return const SchedulePageEmpty();
              }
              return SchedulePageReady(
                currentSchedules: state.currentSchedules,
                nextSchedules: state.nextSchedules,
              );
            }

            if (state is ScheduleStateInitial) {
              return const SchedulePageLoading();
            }

            return SchedulePageError(
              onReloadPressed: () => bloc.add(const LoadAllSchedulesEvent()),
            );
          },
        ),
      ],
    );
  }
}
