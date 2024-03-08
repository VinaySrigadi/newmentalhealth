import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer.withOpacity(1),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.deepOrange400,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: colorScheme.primaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray40001,
          fontSize: 15.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray60001,
          fontSize: 12.fSize,
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w400,
        ),
        displayLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 64.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 30.fSize,
          fontFamily:  'Urbanist',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: Color(0XFF371B34),
          fontSize: 26.fSize,
          fontFamily: 'Epilogue',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 25.fSize,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray600,
          fontSize: 12.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.gray800,
          fontSize: 22.fSize,
          fontFamily: 'Epilogue',
          fontWeight: FontWeight.w800,
        ),
        titleMedium: TextStyle(
          color: appTheme.deepOrange400,
          fontSize: 16.fSize,
          fontFamily:  'Urbanist',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray600,
          fontSize: 14.fSize,
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w500,
        ),
         
        displaySmall: TextStyle(
          color: appTheme.gray600,
          fontSize: 36.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        
      );
        //  headlineLarge: TextStyle(
        //   color: colorScheme.onPrimary,
        //   fontSize: 30.fSize,
        //   fontFamily: 'Urbanist',
        //   fontWeight: FontWeight.w600,
        // ),
        // titleMedium: TextStyle(
        //   color: colorScheme.primary,
        //   fontSize: 18.fSize,
        //   fontFamily: 'Urbanist',
        //   fontWeight: FontWeight.w800,
        // ),
      
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFDE9A54),
    primaryContainer: Color(0XFF303437),
    secondaryContainer: Color(0XFFAEAFF7),

    // Error colors
    errorContainer: Color(0XFFF7F4F2),
    onError: Color(0XFF99D9AF),

    // On colors(text colors)
    onPrimary: Color(0XFF202325),
    onPrimaryContainer: Color(0XABFFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class  PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFEECD15);

  // Black
  Color get black900 => Color(0XFF020304);
  Color get black90001 => Color(0XFF000000);

  // Blue
  Color get blue300 => Color(0XFF55ACEE);

  // BlueGray
  Color get blueGray100 => Color(0XFFD6CCC6);
  Color get blueGray10001 => Color(0XFFD9D8D8);
  Color get blueGray10002 => Color(0XFFCDD0E3);
  Color get blueGray10003 => Color(0XFFCDCFD0);
  Color get blueGray10004 => Color(0XFFD5CCC6);
  Color get blueGray50 => Color(0XFFF1F2F2);
  Color get blueGray900 => Color(0XFF371B34);

  // DeepOrange
  Color get deepOrange400 => Color(0XFFFE8235);

  // DeepPurple
  Color get deepPurple600 => Color(0XFF623AA2);
  // DeepOrange
  Color get deepOrange100 => Color(0XFFFFC89E);

  // DeepOrangef
  Color get deepOrange4003f => Color(0X3FFE814B);

  // DeepPurple
  Color get deepPurpleA100 => Color(0XFFA694F5);
  // Gray
  Color get gray100 => Color(0XFFF4F4F4);
  Color get gray10001 => Color(0XFFF8F6F6);
  Color get gray10002 => Color(0XFFF4F3F1);
  Color get gray10003 => Color(0XFFF7F6F5);
  Color get gray10004 => Color(0XFFF2F3F4);
  Color get gray300 => Color(0XFFE3E4E5);
  Color get gray400 => Color(0XFFBEBEBE);
   Color get gray30001 => Color(0XFFE5EAD6);
  Color get gray40001 => Color(0XFFC7C7C7);
  Color get gray50 => Color(0XFFFAFAFA);
  Color get gray500 => Color(0XFF9A9A9A);
  Color get gray50001 => Color(0XFF979C9E);
  Color get gray80002 => Color(0XFF4E3321);
  Color get gray5001 => Color(0XFFF2F8FF);
  Color get gray600 => Color(0XFF72777A);
  Color get gray60001 => Color(0XFF6F6F6F);
  Color get gray60002 => Color(0XFF828282);
  Color get gray800 => Color(0XFF573926);
  Color get gray900 => Color(0XFF262626);
   // Grayc
  Color get gray8000c => Color(0X0C4B3425);

  // LightGreen
  Color get lightGreen400 => Color(0XFF9BB067);
  Color get lightGreen50 => Color(0XFFF2F4EA);
// LightGreenf
  Color get lightGreen4003f => Color(0X3F9BB068);
  // Green
  Color get green300 => Color(0XFF7CDE86);
  Color get green400 => Color(0XFF53A06E);
  Color get green600 => Color(0XFF34A853);

  // Indigo
  Color get indigo600 => Color(0XFF3B5998);

  // LightBlue
  Color get lightBlueA700 => Color(0XFF0070F0);

  // LightGreen
  Color get lightGreen200 => Color(0XFFC2F2A5);

  // Orange
  Color get orange50 => Color(0XFFFEF3E7);
  Color get orange5001 => Color(0XFFFDF3E6);
  Color get orangeA200 => Color(0XFFF09E54);

  // Pink
  Color get pink300 => Color(0XFFF97794);

  // Purple
  Color get purple400 => Color(0XFFC650B0);
  Color get purple40001 => Color(0XFFC751AF);

  // Teal
  Color get teal100 => Color(0XFFA0E3E2);

  Color get red300 => Color(0XFFD37A7C);

    // Yellow
  Color get yellow900 => Color(0XFFEC7D1C);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
