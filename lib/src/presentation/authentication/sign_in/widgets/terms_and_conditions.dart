import 'package:core/core.dart';
import 'package:extensions/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();
    
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: context.theme.textTheme.bodyMedium,
        children: [
          TextSpan(
            text: localeApi.tr(resourceStrings.lblByContinuingYouAgree),
          ),
          TextSpan(
            text: localeApi.tr(resourceStrings.lblOtherTerms),
            style: context.theme.textTheme.titleMedium?.copyWith(
              color: context.theme.primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //TODO Go to rules page
              },
          ),
          TextSpan(text: localeApi.tr(resourceStrings.lblAnd)),
          TextSpan(
            text: localeApi.tr(resourceStrings.lblPrivacyPolicy),
            style: context.theme.textTheme.titleMedium?.copyWith(
              color: context.theme.primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                const url = "https://quickfoodmm.com/#/privacy-and-policy";
                if (await canLaunchUrl(Uri.parse(url))) {
                  await launchUrl(Uri.parse(url));
                }
              },
          ),
          TextSpan(
            text: localeApi.tr(resourceStrings.lblAcknowledgeAgree)
          ),
        ],
      ),
    );
  }
}
