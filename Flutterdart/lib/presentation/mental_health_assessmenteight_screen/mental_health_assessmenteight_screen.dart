import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_trailing_button.dart';
import 'package:treesa_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:treesa_s_application2/widgets/custom_icon_button.dart';

class MentalHealthAssessmenteightScreen extends StatelessWidget {
  const MentalHealthAssessmenteightScreen({Key? key, required String username}) : super(key: key);







  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 36.v),
                child: Column(children: [
                  Container(
                      width: 333.h,
                      margin: EdgeInsets.only(left: 5.h, right: 3.h),
                      child: Text("How would you rate your sleep quality?",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineLarge!
                              .copyWith(height: 1.27))),
                  SizedBox(height: 46.v),
                  SizedBox(
                      height: 443.v,
                      width: 343.h,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildHowWouldYouRateFrame1(context),
                                  SizedBox(height: 48.v),
                                  _buildHowWouldYouRateFrame3(context,
                                      excellent: "Good", duration: "6-7 hours"),
                                  SizedBox(height: 48.v),
                                  _buildHowWouldYouRateFrame2(context),
                                  SizedBox(height: 48.v),
                                  _buildHowWouldYouRateFrame3(context,
                                      excellent: "Poor", duration: "3-4 hours"),
                                  SizedBox(height: 48.v),
                                  _buildHowWouldYouRateFrame6(context)
                                ])),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 163.h),
                                decoration: AppDecoration.fillGray10004
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 323.v),
                                      Container(
                                          height: 120.v,
                                          width: 16.h,
                                          decoration: BoxDecoration(
                                              color: appTheme.orange50,
                                              borderRadius:
                                                  BorderRadius.circular(8.h)))
                                    ]))),
                        Padding(
                            padding: EdgeInsets.only(bottom: 88.v),
                            child: CustomIconButton(
                                height: 64.adaptSize,
                                width: 64.adaptSize,
                                padding: EdgeInsets.all(20.h),
                                decoration:
                                    IconButtonStyleHelper.outlineDeepOrangeF,
                                alignment: Alignment.bottomCenter,
                                onTap: () {
                                  // onTapBtnUser(context);
                                },
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgUserPrimary)))
                      ])),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgMobile,
            margin: EdgeInsets.only(left: 16.h, top: 4.v, bottom: 4.v)),
        title: AppbarTitle(
            text: "Assessment", margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingButton(
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v))
        ]);
  }

  /// Section Widget
  Widget _buildHowWouldYouRateFrame1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Excellent", style: CustomTextStyles.titleMediumGray500),
            SizedBox(height: 8.v),
            Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgMobileGray400,
                  height: 16.adaptSize,
                  width: 16.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text("7-9 hours".toUpperCase(),
                      style: CustomTextStyles.labelLargeGray400))
            ])
          ])),
      CustomImageView(
          imagePath: ImageConstant.imgSolidMoodOverjoyed,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(24.h))
    ]);
  }

  /// Section Widget
  Widget _buildHowWouldYouRateFrame2(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Fair", style: CustomTextStyles.titleMediumGray500),
            SizedBox(height: 8.v),
            Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgMobileGray400,
                  height: 16.adaptSize,
                  width: 16.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text("5 hours".toUpperCase(),
                      style: CustomTextStyles.labelLargeGray400))
            ])
          ])),
      CustomImageView(
          imagePath: ImageConstant.imgUserGray50001,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(24.h))
    ]);
  }

  /// Section Widget
  Widget _buildHowWouldYouRateFrame6(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Worst", style: CustomTextStyles.titleMediumGray500),
            SizedBox(height: 8.v),
            Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgMobileGray400,
                  height: 16.adaptSize,
                  width: 16.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text("<3 hours".toUpperCase(),
                      style: CustomTextStyles.labelLargeGray400))
            ])
          ])),
      CustomImageView(
          imagePath: ImageConstant.imgSolidMoodDepressed,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(24.h))
    ]);
  }

  /// Common widget
  Widget _buildHowWouldYouRateFrame3(
    BuildContext context, {
    required String excellent,
    required String duration,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(excellent,
                style: CustomTextStyles.titleMediumOnPrimary_1
                    .copyWith(color: theme.colorScheme.onPrimary)),
            SizedBox(height: 8.v),
            Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgMobileGray400,
                  height: 16.adaptSize,
                  width: 16.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(duration,
                      style: CustomTextStyles.labelLargeOnPrimary
                          .copyWith(color: theme.colorScheme.onPrimary)))
            ])
          ])),
      CustomImageView(
          imagePath: ImageConstant.imgSettingsYellow900,
          height: 48.adaptSize,
          width: 48.adaptSize,
          radius: BorderRadius.circular(24.h))
    ]);
  }

  /// Navigates to the mentalHealthAssessmentnineScreen when the action is triggered.
  // onTapBtnUser(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.mentalHealthAssessmentnineScreen);
  // }
}
