import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:localization_api/localization_api.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:validator_api/validator_api.dart';

import '../widgets/terms_and_conditions.dart';

class SignInPage extends StatefulWidget {
  final void Function(String) navigateToPinVerficationPage;

  static const String routeName = "signin";
  static const String routePath = "/$routeName";

  const SignInPage({
    super.key,
    required this.navigateToPinVerficationPage,
  });

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late TextEditingController _phoneNumberController;
  late FocusNode _phoneNumberFocusNode;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _phoneNumberController = TextEditingController(text: "779694133");
    _phoneNumberFocusNode = FocusNode();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localeApi = inject<LocalizationApi>();
    final resourceStrings = inject<ResourceStrings>();

    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          width: context.width > 500 ? context.width * 0.8 : context.width,
          child: ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: context.theme.appBarTheme.backgroundColor,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.phone_iphone,
                      size: 40,
                      color: context.theme.primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Log In with phone number",
                  style: context.theme.textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                height: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: const Image(
                  image: AssetImage(
                    "assets/images/greeting_icon.png",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 30),
              Form(
                key: _formKey,
                child: TextFormField(
                  style: context.theme.textTheme.bodyMedium,
                  controller: _phoneNumberController,
                  focusNode: _phoneNumberFocusNode,
                  maxLength: 9,
                  keyboardType: TextInputType.phone,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    fillColor: Colors.grey.shade200,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    prefix: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "09",
                        style: context.theme.textTheme.bodyMedium,
                      ),
                    ),
                    labelText: localeApi.tr(resourceStrings.lblWhatIsYourPhNo),
                    labelStyle: context.theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
                    floatingLabelStyle: context.theme.textTheme.bodyMedium,
                    helperStyle: Get.textTheme.bodySmall,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: context.theme.primaryColor, width: 2),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    suffixIcon: Icon(
                      Icons.phone_enabled,
                      size: 26,
                      color: context.theme.primaryColor,
                    ),
                  ),
                  textInputAction: TextInputAction.done,
                  validator: inject<ValidatorApi>().validatePhoneNumber,
                ),
              ),
              const SizedBox(height: 15),
              GeneralButton(
                label: localeApi.tr(resourceStrings.btnLogin),
                onPressed: _onContinue,
              ),
              const SizedBox(height: 8),
              const TermsAndConditionsWidget(),
            ],
          ),
        ),
      ),
    );
  }

  void _onContinue() {
    if (_formKey.currentState?.validate() == true) {
      widget.navigateToPinVerficationPage(_phoneNumberController.text);
    }
  }
}
