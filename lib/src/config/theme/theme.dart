import 'package:flutter/material.dart';

class ThemeService {
  static const bool useMaterial3 = true;

  static const kMainColor = Color(0xFFF88808);
  static const kSecondaryColor = Color(0xFFFFEAD1);
  static const kGreyTextColor = Color(0xFF707070);
  static const kBorderColorTextField = Color(0xFFC2C2C2);
  static const kDarkWhite = Color(0xFFF1F7F7);
  static const kTitleColor = Color(0xFF333333);

  static final defaultDark = ThemeData.dark(useMaterial3: useMaterial3);
  static final defaultLight = ThemeData(useMaterial3: useMaterial3);

  static const pageTransitionTheme = PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  });

  static var iconButtonTheme = defaultLight.iconButtonTheme.style;

  static const double textScale = 0.8;

  // ignore: unnecessary_nullable_for_final_variable_declarations
  static const String? fontFamily = "MPLUSRounded1c";

  static final light = defaultLight.copyWith(
    primaryColor: kMainColor,
    scaffoldBackgroundColor: Colors.white,
    cardColor: Colors.white,
    cardTheme: defaultLight.cardTheme.copyWith(
      color: Colors.white,
      elevation: 0,
      surfaceTintColor: Colors.white,
    ),
    appBarTheme: defaultLight.appBarTheme.copyWith(
      elevation: 0,
      scrolledUnderElevation: 0,
      shadowColor: kDarkWhite,
      surfaceTintColor: Colors.transparent,
      backgroundColor: kSecondaryColor,
      titleTextStyle: defaultLight.appBarTheme.titleTextStyle?.copyWith(
        color: kTitleColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: defaultLight.iconTheme.copyWith(
      color: kMainColor,
      size: 24.0,
    ),
    iconButtonTheme: IconButtonThemeData(
      style: defaultLight.iconButtonTheme.style?.copyWith(
        iconColor: const MaterialStatePropertyAll(
          kMainColor,
        ),
      ),
    ),
    dividerColor: kGreyTextColor,
    navigationBarTheme: defaultLight.navigationBarTheme.copyWith(
      backgroundColor: kSecondaryColor,
    ),
    pageTransitionsTheme: pageTransitionTheme,
    textTheme: defaultLight.textTheme.copyWith(
      titleMedium: defaultLight.textTheme.titleMedium?.copyWith(
        color: kTitleColor,
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
        fontFamily: fontFamily,
      ),
      titleLarge: defaultLight.textTheme.titleLarge?.copyWith(
        color: kTitleColor,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
        fontFamily: fontFamily,
      ),
      bodyLarge: defaultLight.textTheme.bodyLarge?.copyWith(
        fontFamily: fontFamily,
      ),
      bodyMedium: defaultLight.textTheme.bodyMedium?.copyWith(
        fontFamily: fontFamily,
      ),
      bodySmall: defaultLight.textTheme.bodySmall?.copyWith(
        color: ThemeData.light().textTheme.bodySmall?.color,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: kMainColor),
    outlinedButtonTheme: defaultLight.outlinedButtonTheme,
    indicatorColor: kMainColor,
    progressIndicatorTheme: defaultLight.progressIndicatorTheme.copyWith(
        // color: kMainColor,
        // linearTrackColor: kMainColor,
        // circularTrackColor: kMainColor,
        ),
    // chipTheme: defaultLight.chipTheme.copyWith(backgroundColor),
  );

  static final dark = defaultDark.copyWith(
    cardColor: Colors.white12,
    primaryColor: Color.lerp(kMainColor, Colors.black, 0.5),
    appBarTheme: defaultLight.appBarTheme.copyWith(
      elevation: 0,
      scrolledUnderElevation: 0,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      backgroundColor: kSecondaryColor,
      titleTextStyle: defaultLight.appBarTheme.titleTextStyle?.copyWith(
        fontWeight: FontWeight.bold,
        color: kTitleColor,
      ),
    ),
    textTheme: defaultDark.textTheme.copyWith(
      titleLarge: defaultDark.textTheme.titleLarge?.copyWith(
        color: Colors.white,
      ),
      titleMedium: defaultDark.textTheme.titleMedium?.copyWith(
        color: Colors.white,
      ),
      titleSmall: defaultDark.textTheme.titleSmall?.copyWith(
        color: Colors.white,
      ),
      bodyLarge: defaultDark.textTheme.bodyLarge?.copyWith(
        color: Colors.white,
      ),
      bodyMedium: defaultDark.textTheme.bodyMedium?.copyWith(
        color: Colors.white,
      ),
      bodySmall: defaultDark.textTheme.bodySmall?.copyWith(
        color: Colors.white,
      ),
    ),
    pageTransitionsTheme: pageTransitionTheme,
  );
}
