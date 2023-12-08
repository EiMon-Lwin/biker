import 'dart:io';
import 'dart:math';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:geo_locator/geo_locator.dart';
import 'package:get/get.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:ui_kit/ui_kit.dart';


class TurnOnLocationPage extends StatelessWidget {
  const TurnOnLocationPage({super.key});

  static const String routeName = "turn-on-location-permission";
  static const String routePath = "/$routeName";

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: min(min(context.width, context.height) * 0.5, 200),
              height: min(min(context.width, context.height) * 0.5, 200),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/permission/turn_on_location.png",
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: min(min(context.width, context.height) * 0.75, 280),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: localeApi.tr(resourceStrings.lblTurnOnLocationService),
                  style: context.theme.textTheme.titleLarge?.copyWith(
                    color: context.theme.textTheme.bodySmall?.color
                        ?.withOpacity(0.8),
                  ),
                  children: [
                    TextSpan(
                      text:
                          "\n${localeApi.tr(resourceStrings.lblTurnOnLocationServiceMsg)}",
                      style: context.theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomActionsWrapper(
        child: Column(
          children: [
            GeneralButton(
              label: localeApi.tr(resourceStrings.btnContinue),
              onPressed: () => inject<GeoLocatorBloc>().add(const OpenLocationSetting()),
            ),
            const SizedBox(height: 10),
            GeneralButton(
              label: localeApi.tr(resourceStrings.btnExit),
              borderColor: context.theme.primaryColor,
              fillColor: context.theme.cardColor,
              labelStyle: context.theme.textTheme.titleMedium?.copyWith(),
              onPressed: () => exit(0),
            ),
          ],
        ),
      ),
    );
  }
}
