import 'package:biker/locale_keys.g.dart';
import 'package:biker/src/constant/constant.dart';
import 'package:biker/src/presentation/authentication/sign_in/bloc/sign_in_bloc.dart';
import 'package:biker/src/presentation/presentation.dart';
import 'package:core/core.dart';
import 'package:dialog_api/dialog_api.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:localization_api/localization_api.dart';
import 'package:pinput/pinput.dart';
import 'package:resend_pin_button/bloc/resend_pin_button_bloc.dart';
import 'package:resend_pin_button/resend_pin_button.dart';
import 'package:resource_strings/resource_strings.dart';
import 'package:sms/application/bloc/sms_bloc.dart';

class PasscodePage extends StatefulWidget {
  final String phoneNumber;
  static const String phoneNumerKey = "phoneNumber";

  final void Function() navigateToHomePage;

  static const String routeName = "passcode";
  static const String routePath = "/$routeName";

  const PasscodePage({
    super.key,
    required this.phoneNumber,
    required this.navigateToHomePage,
  });

  @override
  State<PasscodePage> createState() => _PasscodePageState();
}

class _PasscodePageState extends State<PasscodePage> {
  late final SignInBloc bloc;
  late final ResendPinButtonBloc resendPinButtonBloc;
  late final localizationApi = inject<LocalizationApi>();
  late final resourceStrings = inject<ResourceStrings>();
  late final dialogApi = inject<DialogApi>();

  @override
  void initState() {
    resendPinButtonBloc = ResendPinButtonBloc();
    bloc = SignInBloc(
      resendPinButtonBloc,
      SmsBloc(inject(), inject(), inject(), inject()),
      inject(),
      phoneNumber: widget.phoneNumber,
      showWrongPinAlert: _showWrongPinAlert,
      showSignInFailedAlert: _showSignInFailedAlert,
    );
    bloc.add(const SignInEvent.sendPinCode());
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pinCodeFieldTheme = PinTheme(
      width: 30,
      height: 40,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      textStyle: context.theme.textTheme.titleMedium,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 3,
          ),
        ),
      ),
    );

    return BlocBuilder<SignInBloc, SignInState>(
      bloc: bloc,
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Scaffold(
                appBar: AppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  leading: const AppBarCircularButton(),
                ),
                body: Container(
                  alignment: Alignment.center,
                  width:
                      context.width > 500 ? context.width * 0.8 : context.width,
                  child: ListView(
                    padding: const EdgeInsets.fromLTRB(20, 80, 20, 0),
                    children: [
                      Text(
                        tr(LocaleKeys.lblVerifyPhNo),
                        style: context.theme.textTheme.titleLarge
                            ?.copyWith(color: context.theme.primaryColor),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        tr(LocaleKeys.lblEnterDigitSent),
                        style: context.theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Pinput(
                        length: 6,
                        closeKeyboardWhenCompleted: true,
                        keyboardType: TextInputType.number,
                        defaultPinTheme: pinCodeFieldTheme,
                        androidSmsAutofillMethod:
                            AndroidSmsAutofillMethod.smsUserConsentApi,
                        focusedPinTheme: pinCodeFieldTheme.copyDecorationWith(
                          border: Border(
                            bottom: BorderSide(
                              color: context.theme.primaryColor,
                              width: 3,
                            ),
                          ),
                        ),
                        submittedPinTheme: pinCodeFieldTheme.copyDecorationWith(
                          border: const Border(
                            bottom: BorderSide(
                              color: Colors.green,
                              width: 3,
                            ),
                          ),
                        ),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        onCompleted: (value) {
                          bloc.add(SignInEvent.verifyPinCode(
                            value,
                          ));
                        },
                      ),
                      const SizedBox(height: 40),
                      Text(state.runtimeType.toString()),
                      Row(
                        mainAxisAlignment:
                            context.width > UIConstants.maxMobileWidth
                                ? MainAxisAlignment.start
                                : MainAxisAlignment.center,
                        children: [
                          ResendPinButton(
                            bloc: resendPinButtonBloc,
                            initialBuilder: (p0) {
                              return RichText(
                                  text: const TextSpan(
                                text: "Sms will be send to your phone",
                              ));
                            },
                            resendBuilder: (p0) {
                              return RichText(
                                  text: const TextSpan(
                                text: "Resend Sms",
                              ));
                            },
                            timeoutBuilder: (p0) {
                              return RichText(
                                  text: const TextSpan(
                                text: "Sms Code Has Been TimeOut",
                              ));
                            },
                            runningBuilder: (p0) {
                              return RichText(
                                  text: const TextSpan(
                                text: "Resend Sms Code in",
                              ));
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              if (state is SignInSigningIn)
                const Positioned.fill(child: LoadingOverlay())
            ],
          ),
        );
      },
    );
  }

  Future<void> _showWrongPinAlert() async {
    dialogApi.showSnackBar(
      message: localizationApi.tr(resourceStrings.lblPinDoesntMatch),
    );
  }

  Future<void> _showSignInFailedAlert() async {
    dialogApi.showDialog(
      titleLabel: localizationApi.tr(resourceStrings.lblCantSignIn),
    );
  }
}
