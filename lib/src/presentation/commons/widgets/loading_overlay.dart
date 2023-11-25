import 'dart:math';
import 'dart:ui';

import 'package:biker/src/constant/constant.dart';
import 'package:core/di/injector.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';

class LoadingOverlay extends StatelessWidget {
  final String? message;
  final String? description;
  final double blurSigma;
  final Color? overlayColor;
  final Color? descriptionBackground;
  final Widget? descriptionHeader;

  const LoadingOverlay({
    super.key,
    this.message,
    this.description,
    this.blurSigma = 3.0,
    this.overlayColor,
    this.descriptionBackground,
    this.descriptionHeader,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();
    
    return SizedBox(
      width: context.width,
      height: context.height,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SizedBox(
              width: context.width,
              height: context.height,
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: blurSigma,
                  sigmaY: blurSigma,
                ),
                child: ColoredBox(
                  color: overlayColor ?? Colors.black.withOpacity(0.1),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoadingAnimationWidget.staggeredDotsWave(
                        color: theme.primaryColor,
                        size: 50.0,
                      ),
                      if (message != null)
                        Text(
                          message ?? '',
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      if (descriptionHeader != null ||
                          description?.isNotEmpty == true)
                        Container(
                          margin: const EdgeInsets.all(20.0),
                          width:
                              min(context.width, UIConstants.maxMobileWidth) -
                                  40.0,
                          decoration: BoxDecoration(
                            color: descriptionBackground ??
                                Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              if (descriptionHeader != null) ...[
                                descriptionHeader!,
                              ],
                              if (description != null) ...[
                                if (descriptionHeader != null)
                                  const SizedBox(height: 20.0),
                                Text(
                                  description ?? '',
                                  textAlign: TextAlign.justify,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ]
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            if (Navigator.of(context).canPop())
              Positioned(
                left: 0,
                right: 0,
                bottom: 60.0,
                child: GestureDetector(
                  onTap: Navigator.of(context).canPop()
                      ? Navigator.of(context).pop
                      : null,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                      decoration: BoxDecoration(
                        // color: theme.scaffoldBackgroundColor,
                        color: Colors.white.withOpacity(0.3),
                        border: Border.all(color: theme.primaryColor),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.arrow_back_rounded),
                          const SizedBox(width: 10.0),
                          Text(
                            localeApi.tr(resourceStrings.btnGoBack),
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: theme.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
