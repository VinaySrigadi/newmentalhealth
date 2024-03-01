import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  
  // Body text style
  static get bodyLargeEpilogueBluegray900 =>
      theme.textTheme.bodyLarge!.epilogue.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeEpilogueBluegray90018 =>
      theme.textTheme.bodyLarge!.epilogue.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeLatoGray900 => theme.textTheme.bodyLarge!.lato.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumEpilogueGray60001 =>
      theme.textTheme.bodyMedium!.epilogue.copyWith(
        color: appTheme.gray60001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumff262626 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF262626),
      );
  static get bodySmallEpilogueGray50 =>
      theme.textTheme.bodySmall!.epilogue.copyWith(
        color: appTheme.gray50,
      );
  static get bodySmallEpilogueGray60002 =>
      theme.textTheme.bodySmall!.epilogue.copyWith(
        color: appTheme.gray60002,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
      );
  static get bodySmallGray800_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800.withOpacity(0.67),
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
      static get headlineLargeExtraBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w800,
      );
  // Headline text style
  static get headlineMediumAlegreyaBluegray900 =>
      theme.textTheme.headlineMedium!.alegreya.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumBold => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumSemiBold => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w600,
        
      );
        static get headlineLargeGray300 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray300,
      );
  static get headlineLargeGray600 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeff736a66 => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFF736A66),
        fontWeight: FontWeight.w600,
      );
  static get headlineLargeffffffff => theme.textTheme.headlineLarge!.copyWith(
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w600,
      );
  // Label text style
   static get labelLargeGray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelLargeOnPrimaryBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimaryBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRubikGray800 =>
      theme.textTheme.labelLarge!.rubik.copyWith(
        color: appTheme.gray800.withOpacity(0.67),
      );
  // Title text style
    static get titleLargeGray600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w700,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray40001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray40001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray600Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: 16.fSize,
      );
  static get titleMediumLightgreen400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lightGreen400,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary16 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallLightgreen400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightGreen400,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallff736a66 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF736A66),
      );
  static get titleSmallff9bb067 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF9BB067),
      );
      static get titleMediumGray80002Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray10002,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumDMSansBlack900 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumDMSansBlack90001 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallEpilogueDeeporange400 =>
      theme.textTheme.titleSmall!.epilogue.copyWith(
        color: appTheme.deepOrange400,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallEpilogueGray50 =>
      theme.textTheme.titleSmall!.epilogue.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallEpilogueGray800 =>
      theme.textTheme.titleSmall!.epilogue.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w700,
      );
  
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallRubikGray800 =>
      theme.textTheme.titleSmall!.rubik.copyWith(
        color: appTheme.gray800,
      );
}

extension on TextStyle {
  TextStyle get urbanist {
    return copyWith(
      fontFamily: 'Urbanist',
    );
  }
}
extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get epilogue {
    return copyWith(
      fontFamily: 'Epilogue',
    );
  }

  TextStyle get rubik {
    return copyWith(
      fontFamily: 'Rubik',
    );
  }

  TextStyle get alegreya {
    return copyWith(
      fontFamily: 'Alegreya',
    );
  }
}
