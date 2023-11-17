import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule/application/bloc/schedule_bloc.dart';

class SchedulesPage extends StatefulWidget {
  const SchedulesPage({super.key});

  @override
  State<SchedulesPage> createState() => _SchedulesPageState();
}

class _SchedulesPageState extends State<SchedulesPage> {
  final bloc = inject<ScheduleBloc>();

  @override
  void initState() {
    bloc.add(const LoadAllSchedulesEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleBloc, ScheduleState>(
      bloc: bloc,
      builder: (context, state) {
        return Container();
      },
    );
  }
}