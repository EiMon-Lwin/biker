import 'dart:io';
import 'dart:math';

import 'package:biker/locale_keys.g.dart';
import 'package:biker/src/presentation/commons/widgets/botton_navigation_wrapper.dart';
import 'package:biker/src/presentation/commons/widgets/general_button.dart';
import 'package:core/core.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:geo_locator/bloc/geo_locator_bloc.dart';
import 'package:get/get.dart';


class TurnOnLocationPage extends StatelessWidget {
  const TurnOnLocationPage({super.key});

  static const String routeName = "turn-on-location-permission";
  static const String routePath = "/$routeName";

  @override
  Widget build(BuildContext context) {
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
                  text: tr(LocaleKeys.lblTurnOnLocationService),
                  style: context.theme.textTheme.titleLarge?.copyWith(
                    color: context.theme.textTheme.bodySmall?.color
                        ?.withOpacity(0.8),
                  ),
                  children: [
                    TextSpan(
                      text:
                          "\n${tr(LocaleKeys.lblTurnOnLocationServiceMsg)}",
                      style: context.theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationWrapper(
        height: 110,
        child: Column(
          children: [
            GeneralButton(
              label: tr(LocaleKeys.btnContinue),
              onPressed: () => inject<GeoLocatorBloc>().add(const OpenLocationSetting()),
            ),
            const SizedBox(height: 10),
            GeneralButton(
              label: tr(LocaleKeys.btnExit),
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
