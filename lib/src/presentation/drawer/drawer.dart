import 'package:biker/src/presentation/drawer/widgets/earnings.dart';
import 'package:biker/src/utils/context_extension.dart';
import 'package:biker/src/utils/gradient.dart';
import 'package:flutter/material.dart';

import 'widgets/navigation_panel.dart';
import 'widgets/personal_avatar.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              gradient: GradientGenerator.twoColorDiagonalLinear(
                Colors.grey.shade200,
                context.theme.scaffoldBackgroundColor,
              ),
            ),
            child: const SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    PersonalProfileCard(),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: context.theme.scaffoldBackgroundColor,
              ),
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const EarningsWidget(
                    cashCollected: 8940,
                    earningAmount: 98000,
                  ),
                  const SizedBox(height:20),
                  Divider(
                    color: context.theme.dividerColor.withOpacity(0.1),
                  ),
                  const NavigationPanel(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
