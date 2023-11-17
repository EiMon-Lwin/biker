import 'package:biker/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: context.theme.textTheme.bodyMedium,
        children: [
          TextSpan(
            text: tr(LocaleKeys.lblByContinuingYouAgree),
          ),
          TextSpan(
            text: tr(LocaleKeys.lblOtherTerms),
            style: context.theme.textTheme.titleMedium?.copyWith(
              color: context.theme.primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //TODO Go to rules page
              },
          ),
          TextSpan(text: tr(LocaleKeys.lblAnd)),
          TextSpan(
            text: tr(LocaleKeys.lblPrivacyPolicy),
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
            text: tr(LocaleKeys.lblAcknowledgeAgree)
          ),
        ],
      ),
    );
  }
}
