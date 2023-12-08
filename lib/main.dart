import 'package:biker/app/app_builder.dart';
import 'package:biker/app/app_module.dart';
import 'package:biker/src/config/config.dart';
import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:localization_api/localization_api.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  final appBuilder = AppBuilder();
  await appBuilder.initialize(Environment.dev);

  final localeService = inject<LocalizationApi>();

  runApp(EasyLocalization(
    path: 'assets/translations',
    startLocale: (await localeService.startLocale).locale,
    supportedLocales: localeService.supportedLocales,
    fallbackLocale: localeService.defaultLocale.locale,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final routerService = inject<RouterService>();

    return MaterialApp.router(
      theme: ThemeService.light,
      darkTheme: ThemeService.dark,
      themeMode: ThemeMode.light,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      routerDelegate: routerService.routerConfig.routerDelegate,
      routeInformationParser: routerService.routerConfig.routeInformationParser,
      routeInformationProvider:
          routerService.routerConfig.routeInformationProvider,
    );
  }
}


// dart run easy_localization:generate -S assets/translations -f keys -O lib -o ../package/resource_strings/lib/locale_keys.g.dart