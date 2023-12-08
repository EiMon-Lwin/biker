import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';

abstract class DialogApi {
  final ResourceStrings resourceStrings;
  final LocalizationApi localizationApi;

  const DialogApi(this.resourceStrings, this.localizationApi);

  Future<T?> showDialog<T>({
    final void Function()? onPrimaryButtonTap,
    final void Function()? onSecondaryButtonTap,
    final String? primaryButtonLabel,
    final String? secondaryButtonLabel,
    final String? titleLabel,
    final String? descriptionLabel,
    final Widget? titleContent,
    final Widget? descriptionContent,
    final String? assetImage,
    final String? lottieAsset,
    final bool barrierDismissable = false,
    final Widget? content,
    final EdgeInsets contentMargin = const EdgeInsets.fromLTRB(20, 0, 20, 20),
  });

  Future<void> showSnackBar({
    required final String message,
    final Future<void> Function()? onActionButtonTap,
    final String? actionButtonLabel,
    final Duration displayDuration,
  });

  Future<void> clearSnacks();
}
