import 'package:colorize/colorize.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/material.dart' hide showDialog;
import 'package:localization_api/localization_api.dart';
import 'package:lottie/lottie.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:ui_kit/ui_kit.dart';

import 'dialog_api.dart';

class DialogApiImplementation extends DialogApi {
  final GlobalKey<NavigatorState> rootNavigationKey;
  final GlobalKey<ScaffoldState> primaryScaffoldKey;

  const DialogApiImplementation(
    ResourceStrings resourceStrings,
    LocalizationApi localizationApi,
    this.rootNavigationKey,
    this.primaryScaffoldKey,
  ) : super(
          resourceStrings,
          localizationApi,
        );

  @override
  Future<T?> showDialog<T>({
    final void Function()? onPrimaryButtonTap,
    final void Function()? onSecondaryButtonTap,
    final String? primaryButtonLabel,
    final String? secondaryButtonLabel,
    final String? titleLabel,
    final String? descriptionLabel,
    final material.Widget? titleContent,
    final material.Widget? descriptionContent,
    final String? assetImage,
    final String? lottieAsset,
    final bool barrierDismissable = false,
    final material.Widget? content,
    final material.EdgeInsets contentMargin = const material.EdgeInsets.all(0),
    final material.EdgeInsets contentPadding = const material.EdgeInsets.fromLTRB(20, 10, 20, 20),
  }) async {
    final context = rootNavigationKey.currentState?.context;

    if(context == null) {
      if(kDebugMode) print(Colorize("Navigation Context is null !!!").bgYellow().red());
      return null;
    }

    final theme = material.Theme.of(context);
    return material.showDialog(
      context: context,
      barrierDismissible: true, // barrierDismissable,
      builder: (context) {
        if (content != null) return content;

        return material.Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              margin: contentMargin,
              child: Container(
                padding: contentPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 10.0),
                    if (assetImage != null) ...[
                      Image.asset(assetImage),
                      const SizedBox(height: 10),
                    ],
                    if (lottieAsset != null) ...[
                      Container(
                        height: 140.0,
                        alignment: Alignment.center,
                        child: Lottie.asset(
                          lottieAsset,
                          repeat: false,
                        ),
                      ),
                    ],
                    titleContent ??
                        Text(
                          titleLabel ?? "Information",
                          style: theme.textTheme.titleLarge,
                        ),
                    const SizedBox(height: 5.0),
                    descriptionContent ??
                        (descriptionLabel == null
                            ? const SizedBox.shrink()
                            : Text(
                                descriptionLabel,
                                style: theme.textTheme.bodyMedium,
                              )),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        if (onPrimaryButtonTap == null)
                          Expanded(
                            child: GeneralButton(
                              fillColor: theme.primaryColor,
                              labelStyle: theme.textTheme.titleMedium?.copyWith(
                                color: theme.scaffoldBackgroundColor,
                              ),
                              onPressed: onSecondaryButtonTap?.call ??
                                  Navigator.of(context).pop,
                              label:
                                  secondaryButtonLabel ?? 
                                  localizationApi.tr(resourceStrings.btnOK),
                              cornerRadius: 100.0,
                            ),
                          ),
                        if (onPrimaryButtonTap != null) ...[
                          GeneralButton(
                            fillColor: theme.scaffoldBackgroundColor,
                            borderColor: theme.primaryColor,
                            labelStyle: theme.textTheme.titleMedium?.copyWith(
                              color: theme.primaryColor,
                            ),
                            onPressed: onSecondaryButtonTap?.call ??
                                Navigator.of(context).pop,
                            label: secondaryButtonLabel ??
                                localizationApi.tr(resourceStrings.btnCancel),
                            cornerRadius: 100.0,
                          ),
                          const SizedBox(width: 20),
                          GeneralButton(
                            fillColor: theme.primaryColor,
                            labelStyle: theme.textTheme.titleMedium?.copyWith(
                              color: theme.scaffoldBackgroundColor,
                            ),
                            onPressed: onPrimaryButtonTap.call,
                            label:
                                primaryButtonLabel ?? localizationApi.tr(resourceStrings.btnLogin),
                            cornerRadius: 100.0,
                          ),
                        ]
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
  
  @override
  Future<void> showSnackBar({
    required String message,
    final Future<void> Function()? onActionButtonTap,
    final String? actionButtonLabel,
    final Duration displayDuration = const Duration(seconds: 1),
  }) async {
    final context = rootNavigationKey.currentState?.context;

    if(context == null) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 86.0),
        content: Text(
          message
        ),
        action: actionButtonLabel == null
          ? null :
          SnackBarAction(
            label: actionButtonLabel,
            onPressed: onActionButtonTap ?? () {},
          ),
      )
    );
  }
  
  @override
  Future<void> clearSnacks() async {
    final context = rootNavigationKey.currentState?.context;

    if(context == null) return;
    ScaffoldMessenger.of(context).clearSnackBars();
  }
}
