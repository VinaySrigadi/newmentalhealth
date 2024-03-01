import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOrange50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 5.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse235x35,
                height: 35.adaptSize,
                width: 35.adaptSize,
                radius: BorderRadius.circular(
                  17.h,
                ),
                margin: EdgeInsets.only(bottom: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sahana V",
                      style: TextStyle(
                        color: appTheme.gray800,
                        fontSize: 14.fSize,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      "Msc in Clinical Psychology",
                      style: TextStyle(
                        color: appTheme.gray800,
                        fontSize: 12.fSize,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(right: 50.h),
            child: Row(
              children: [
                Container(
                  width: 104.h,
                  margin: EdgeInsets.only(bottom: 1.v),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgIcOutlineDateRangeBlueGray100,
                        height: 17.adaptSize,
                        width: 17.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "31st March ‘22",
                          style: TextStyle(
                            color: appTheme.gray60001,
                            fontSize: 12.fSize,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 126.h,
                  margin: EdgeInsets.only(left: 15.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgWiTime2,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "7:30 PM - 8:30 PM",
                          style: TextStyle(
                            color: appTheme.gray60001,
                            fontSize: 12.fSize,
                            fontFamily: 'Rubik',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 71.h),
            child: Row(
              children: [
                CustomElevatedButton(
                  height: 40.v,
                  width: 117.h,
                  text: "Reschedule", onTap: () async{  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 37.h,
                    top: 12.v,
                    bottom: 12.v,
                  ),
                  child: Text(
                    "Book Now",
                    style: TextStyle(
                      color: appTheme.deepOrange400,
                      fontSize: 14.fSize,
                      fontFamily: 'Epilogue',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
