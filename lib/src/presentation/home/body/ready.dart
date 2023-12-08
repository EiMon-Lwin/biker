import 'package:biker/src/utils/context_extension.dart';
import 'package:flutter/material.dart';

import '../../drawer/drawer.dart';
import '../../orders/pages/orders_page.dart';
import '../../schedule/check_in/widgets/check_in_widget.dart';
import '../../schedule/schedules/schedule_page.dart';
import '../widgets/check_in_button.dart';

class HomePageReady extends StatefulWidget {
  final String userName;
  final bool isCheckedIn;
  final void Function() onCheckInButtonPressed;
  final Future<void> Function() onRefresh;

  const HomePageReady({
    super.key,
    required this.userName,
    required this.isCheckedIn,
    required this.onCheckInButtonPressed,
    required this.onRefresh,
  });

  @override
  State<HomePageReady> createState() => _HomePageReadyState();
}

class _HomePageReadyState extends State<HomePageReady>  with SingleTickerProviderStateMixin {
  late final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final items = [
      const CurrentOrdersPage(),
      const CheckInScheduleWidget(),
      const SchedulesPage(),
    ];

    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerPage(),
      appBar: AppBar(
        centerTitle: true,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(Icons.menu_open),
            iconSize: context.theme.iconTheme.size! * 1.2,
            onPressed: Scaffold.of(context).openDrawer,
          );
        }),
        title: Text(
          widget.userName,
          style: context.theme.textTheme.titleLarge,
        ),
        actions: [
          CheckInButton(
            margin: const EdgeInsets.fromLTRB(0, 8, 10, 8),
            onCheckInButtonPressed: widget.onCheckInButtonPressed,
            isCheckedIn: widget.isCheckedIn,
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: widget.onRefresh,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 20),
          itemCount: items.length,
          itemBuilder: (context, index) => items[index],
          separatorBuilder: (BuildContext context, int index) {
            if (index == items.length - 1) return const SizedBox.shrink();
            return const SizedBox(height: 20);
          },
        ),
      ),
    );
  }
}
