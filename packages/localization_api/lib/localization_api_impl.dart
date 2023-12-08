import 'dart:ui';

import 'package:utils/utils.dart';
import 'package:local_storage/local_storage.dart';
import 'package:easy_localization/easy_localization.dart' as localization;

import 'localization_api.dart';

class LocalizationApiImpl implements LocalizationApi {
  final LocalStorage storage;
  LocalizationApiImpl(this.storage);

  //Locale Codes
  static const Locale localeMyMM = Locale('my', 'MM');
  static const Locale localeEnUK = Locale('en', 'UK');

  //Language Objects
  static const Language languageMM = Language(
    name: "မြန်မာ",
    locale: localeMyMM,
    flag: SvgFlag(
      path: 'assets/images/myanmar.svg',
      locale: localeMyMM,
    ),
  );

  static const Language languageEnUK = Language(
    name: 'English',
    locale: localeEnUK,
    flag: SvgFlag(
      path: 'assets/images/uk.svg',
      locale: localeEnUK,
    ),
  );

  @override
  Language get defaultLocale => languageEnUK;

  @override
  Set<Language> get supportedLanguages => {languageEnUK, languageMM};

  @override
  List<Locale> get supportedLocales =>
      supportedLanguages.map((e) => e.locale).toList();

  static const _savedLocaleKey = "LOCALE";

  @override
  void changeLocale(Locale locale) async {
    await storage.setString(_savedLocaleKey, locale.languageCode);
  }

  @override
  Future<Language> getSavedLocale() async {
    final value = await storage.getString(_savedLocaleKey);

    return supportedLanguages
            .firstWhereOrNull((e) => e.locale.languageCode == value) ??
        defaultLocale;
  }

  @override
  Future<Language> get startLocale => getSavedLocale();

  @override
  String tr(String key, {Map<String, String>? namedArgs}) {
    return localization.tr(key, namedArgs: namedArgs);
  }
}
