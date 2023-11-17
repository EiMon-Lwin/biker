import 'package:biker/src/config/config.dart';
import 'package:biker/src/presentation/presentation.dart';
import 'package:biker/src/utils/utils.dart';
import 'package:flutter/material.dart';

class ApiConfigPage extends StatefulWidget {
  const ApiConfigPage({
    super.key,
    required this.navigateToSplashPage,
  });

  static const String routeName = "api-config";
  static const String routePath = "/$routeName";

  final void Function() navigateToSplashPage;

  @override
  State<ApiConfigPage> createState() => _ApiConfigPageState();
}

class _ApiConfigPageState extends State<ApiConfigPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _hostController;
  late ThemeData _theme;

  Future<void> _onSubmit() async {
    final isValid = _formKey.currentState?.validate();
    if (isValid != true) return;
    ClientConstants.host = _hostController.text;
    widget.navigateToSplashPage();
  }

  String? _onValidate(String? value) {
    if (value?.isNotEmpty != true ||
        !RegExp(r"^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$|^(?:(?:https?:\/\/)?(?:[a-z0-9]+(?:-[a-z0-9]+)*\.)+[a-z]{2,})(?:\/.*)?$")
            .hasMatch(value!)) {
      return 'Invalid host';
    }
    return null;
  }

  Future<bool> _onWillPop() async {
    widget.navigateToSplashPage();
    return true;
  }

  @override
  void initState() {
    super.initState();
    _hostController = TextEditingController(text: ClientConstants.host);
    _hostController.addListener(() {
      final value = _hostController.text;
      final isIpAddress =
          RegExp(r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}').hasMatch(value);

      ClientConstants.scheme = isIpAddress ? 'http' : 'https';
      if (mounted) setState(() {});
    });
  }

  @override
  void didChangeDependencies() {
    _theme = Theme.of(context);
    super.didChangeDependencies();
  }

  static const schemeChoices = [
    'http',
    'https',
  ];

  static const hostAddresses = [
    ClientConstants.apiHost,
    ClientConstants.analyticApiHost,
    ClientConstants.localHost,
  ];

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(4.0);

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Theme(
        data: ThemeService.light,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Developer Config'),
          ),
          body: KeyboardDismissWrapper(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'HTTP Scheme',
                            style: _theme.textTheme.titleMedium,
                          ),
                          const SizedBox(width: 20.0),
                          DropdownButton<String>(
                            value: ClientConstants.scheme,
                            items: schemeChoices
                                .map(
                                  (e) => DropdownMenuItem<String>(
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
                                .toList(),
                            onChanged: (value) {
                              if (value == null) return;
                              ClientConstants.scheme = value;
                              if (mounted) setState(() {});
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: _hostController,
                        validator: _onValidate,
                        decoration: InputDecoration(
                          label: const Text('host ip or address'),
                          labelStyle: _theme.textTheme.titleMedium,
                          border: OutlineInputBorder(
                            borderRadius: borderRadius,
                          ),
                        ),
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (value) => dismissKeyBoard(context),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        height: 40.0,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: hostAddresses.map((e) {
                              return InkWell(
                                onTap: () => _hostController.text = e,
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 8, 20, 8),
                                  margin: const EdgeInsets.only(right: 20.0),
                                  decoration: BoxDecoration(
                                    borderRadius: borderRadius,
                                    border: Border.all(
                                      color: _theme.primaryColor,
                                    ),
                                  ),
                                  child: Text(e),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            'Auto Fill OTP',
                            style: _theme.textTheme.titleMedium,
                          ),
                          const SizedBox(width: 20.0),
                          Switch(
                            value: ClientConstants.bypassOTPSignIn,
                            onChanged: (value) {
                              ClientConstants.bypassOTPSignIn = value;
                              if (mounted) setState(() {});
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Bypass Major Network Check',
                            style: _theme.textTheme.titleMedium,
                          ),
                          const SizedBox(width: 20.0),
                          Switch(
                            value: ClientConstants.bypassNetworkLookup,
                            onChanged: (value) {
                              ClientConstants.bypassNetworkLookup =
                                  value;
                              if (mounted) setState(() {});
                            },
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Do not wait for SignalR services',
                            style: _theme.textTheme.titleMedium,
                          ),
                          const SizedBox(width: 20.0),
                          Switch(
                            value: ClientConstants.bypassSignalRService,
                            onChanged: (value) {
                              ClientConstants.bypassSignalRService =
                                  value;
                              if (mounted) setState(() {});
                            },
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 66.0,
            color: _theme.scaffoldBackgroundColor,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: GeneralButton(label: 'Continue', onPressed: _onSubmit),
          ),
        ),
      ),
    );
  }
}
