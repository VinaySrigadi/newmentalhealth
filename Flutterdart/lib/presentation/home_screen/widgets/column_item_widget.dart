import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ColumnItemWidget extends StatelessWidget {
  const ColumnItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          height: 62.v,
          width: 59.h,
          padding: EdgeInsets.all(12.h),
          decoration: IconButtonStyleHelper.fillErrorContainer,
          child: CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
          ),
        ),
        SizedBox(height: 8.v),
        Text(
          "Happy",
          style: TextStyle(
            color: appTheme.gray60002,
            fontSize: 12.fSize,
            fontFamily: 'Epilogue',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}