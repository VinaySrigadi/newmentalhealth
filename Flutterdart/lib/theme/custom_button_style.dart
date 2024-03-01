
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray10002,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
      );
  static ButtonStyle get fillGrayTL22 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray5001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.h),
        ),
      );
      static ButtonStyle get fillGrayTL28 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray30001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
      );
  static ButtonStyle get fillOnPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
      );
static ButtonStyle get outlineDeepOrangeF => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.h),
        ),
        shadowColor: appTheme.deepOrange4003f,
        elevation: 0,
      );
  static ButtonStyle get outlineLightGreenF => ElevatedButton.styleFrom(
        backgroundColor: appTheme.lightGreen400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.h),
        ),
        shadowColor: appTheme.lightGreen4003f,
        elevation: 0,
      );
  // Gradient button style
  static BoxDecoration get gradientPrimaryToPurpleDecoration => BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            24.h,
          ),
          topRight: Radius.circular(
            24.h,
          ),
          bottomLeft: Radius.circular(
            24.h,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.purple400,
          ],
        ),
      );
static BoxDecoration get gradientPrimaryToRedDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
        gradient: LinearGradient(
          begin: Alignment(-0.04, 0),
          end: Alignment(1.05, 1),
          colors: [
            theme.colorScheme.primary,
            appTheme.red300,
          ],
        ),
      );

  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}