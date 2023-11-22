import 'package:biker/src/utils/context_extension.dart';
import 'package:biker_info/biker_info.dart';
import 'package:flutter/material.dart';

import '../../check_in/widgets/check_in_widget.dart';
import '../../orders/pages/orders_page.dart';
import '../../schedule/pages/schedule_page.dart';
import '../widgets/check_in_button.dart';

class HomePageReady extends StatelessWidget {
  final BikerInfoReady state;
  final bool isCheckedIn;
  final void Function() onCheckInButtonPressed;
  final Future<void> Function() onRefresh;

  const HomePageReady({
    super.key,
    required this.state,
    required this.isCheckedIn,
    required this.onCheckInButtonPressed,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          state.bikerInfo.fullName,
          style: context.theme.textTheme.titleMedium,
        ),
        actions: [
          CheckInButton(
            margin: const EdgeInsets.fromLTRB(0, 6, 10, 6),
            onCheckInButtonPressed: onCheckInButtonPressed,
            isCheckedIn: isCheckedIn,
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: const SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CurrentOrdersPage(),
              CheckInScheduleWidget(),
              SchedulesPage(),
            ],
          ),
        ),
      ),
    );
  }
}
