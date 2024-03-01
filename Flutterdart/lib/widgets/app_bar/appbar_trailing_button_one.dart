import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarTrailingButtonOne extends StatelessWidget {
  AppbarTrailingButtonOne({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 28.v,
          width: 60.h,
          text: "1 of 14", onTap: ()async {  },
        ),
      ),
    );
  }
}
