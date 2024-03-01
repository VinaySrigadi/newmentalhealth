import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class AppbarLeadingCircleimage extends StatelessWidget {
  AppbarLeadingCircleimage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.roundedBorder17,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 35.adaptSize,
          width: 35.adaptSize,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            17.h,
          ),
        ),
      ),
    );
  }
}
