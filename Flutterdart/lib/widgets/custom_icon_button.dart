import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
               BoxDecoration(
                  borderRadius: BorderRadius.circular(24.h),
                  border: Border.all(
                    color: theme.colorScheme.onPrimary,
                    width: 1.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.indigo600,
        borderRadius: BorderRadius.circular(17.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlackTL17 => BoxDecoration(
        color: appTheme.blue300,
        borderRadius: BorderRadius.circular(17.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal100,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillOrangeA => BoxDecoration(
        color: appTheme.orangeA200,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen200,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(22.h),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillGrayTL16 => BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get gradientAmberToPurple => BoxDecoration(
        borderRadius: BorderRadius.circular(22.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.amber500,
            appTheme.purple40001,
          ],
        ),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray10002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueGray1 => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray10001,
          width: 1.h,
        ),
      );
        static BoxDecoration get outlineDeepOrangeF => BoxDecoration(
        color: appTheme.yellow900,
        borderRadius: BorderRadius.circular(32.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.deepOrange4003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
}
