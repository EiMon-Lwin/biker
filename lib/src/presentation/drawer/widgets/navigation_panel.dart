import 'package:biker/src/config/config.dart';
import 'package:core/di/injector.dart';
import 'package:extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';

class NavEndPointModel {
  final String label;
  final IconData icon;
  final String endpoint;

  const NavEndPointModel({
    required this.label,
    required this.icon,
    required this.endpoint,
  });
}

class NavLinkWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  const NavLinkWidget({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: InkWell(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                icon,
                color: context.theme.textTheme.titleMedium?.color?.withOpacity(0.6),
                size: context.theme.iconTheme.size!,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              label,
              style: context.theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resouceStrings = inject<ResourceStrings>();
    final routerService = inject<RouterService>();

    final navEndpoints = [
      NavEndPointModel(
        label: localeApi.tr(resouceStrings.lblHome),
        endpoint: routerService.home,
        icon: Icons.home_rounded,
      ),
      NavEndPointModel(
        label: localeApi.tr(resouceStrings.lblGenInfo),
        endpoint: routerService.personal,
        icon: Icons.person_rounded,
      ),
      NavEndPointModel(
        label: localeApi.tr(resouceStrings.lblSchedule),
        endpoint: routerService.schedule,
        icon: Icons.schedule_rounded,
      ),
      NavEndPointModel(
        label: localeApi.tr(resouceStrings.lblPastOrders),
        endpoint: routerService.pastOrders,
        icon: Icons.fastfood_rounded,
      ),
      NavEndPointModel(
        label: localeApi.tr(resouceStrings.lblClearance),
        endpoint: routerService.clearance,
        icon: Icons.clear_all_rounded,
      ),
      NavEndPointModel(
        label: localeApi.tr(resouceStrings.lblRules),
        endpoint: routerService.rules,
        icon: Icons.rule,
      ),
      NavEndPointModel(
        label: localeApi.tr(resouceStrings.lblPromotionShops),
        endpoint: routerService.promotionShops,
        icon: Icons.shop,
      ),
      NavEndPointModel(
        label: localeApi.tr(resouceStrings.lblNoti),
        endpoint: routerService.notification,
        icon: Icons.notifications_rounded,
      ),
      NavEndPointModel(
        label: localeApi.tr(resouceStrings.lblSettings),
        endpoint: routerService.settings,
        icon: Icons.settings_rounded,
      ),
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...navEndpoints.map((link) {
          return NavLinkWidget(
            icon: link.icon,
            label: link.label,
          );
        })
      ],
    );
  }
}
