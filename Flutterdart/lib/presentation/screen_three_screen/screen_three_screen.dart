import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:treesa_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:treesa_s_application2/widgets/custom_elevated_button.dart';
import 'package:treesa_s_application2/widgets/custom_icon_button.dart';
import 'package:treesa_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ScreenThreeScreen extends StatelessWidget {
  ScreenThreeScreen({Key? key}) : super(key: key);

  TextEditingController showSportsFacilitiesController =
      TextEditingController();

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v),
                child: Column(children: [
                  Text("Wed 8:21 AM",
                      style: TextStyle(
                          color: appTheme.gray600,
                          fontSize: 12.fSize,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 8.v),
                  _buildMessage(context,
                      dynamicText:
                          "Hello, I’m FitBot! 👋 I’m your personal sport assistant. How can I help you?"),
                  SizedBox(height: 16.v),
                  _buildBookMeAVisitInAGym(context),
                  SizedBox(height: 16.v),
                  _buildShowSportsFacilities(context),
                  SizedBox(height: 32.v),
                  _buildShowMeOtherOptions(context),
                  SizedBox(height: 32.v),
                  _buildMessage(context, dynamicText: "Ok, how about these?"),
                  SizedBox(height: 16.v),
                  _buildCard(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildSendAMessagePrompt(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 68.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgHiconLinear,
            margin: EdgeInsets.only(left: 24.h, top: 6.v, bottom: 6.v),
            onTap: () {
              onTapHiconLinear(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Column(children: [
              Row(children: [
                AppbarTitleIconbutton(imagePath: ImageConstant.imgBot),
                Padding(
                    padding: EdgeInsets.only(left: 12.h, top: 3.v, bottom: 2.v),
                    child: Column(children: [
                      AppbarTitle(
                          text: "FitBot", margin: EdgeInsets.only(right: 49.h)),
                      SizedBox(height: 3.v),
                      Row(children: [
                        Container(
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            margin: EdgeInsets.only(top: 3.v, bottom: 5.v),
                            decoration: BoxDecoration(
                                color: appTheme.green300,
                                borderRadius: BorderRadius.circular(4.h))),
                        AppbarTitle(
                            text: "Always active",
                            margin: EdgeInsets.only(left: 4.h))
                      ])
                    ]))
              ])
            ])),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgHiconBoldMenu,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 6.v))
        ]);
  }

  /// Section Widget
  Widget _buildBookMeAVisitInAGym(BuildContext context) {
    return CustomElevatedButton(
        height: 44.v,
        width: 214.h,
        text: "Book me a visit in a gym",
        buttonStyle: CustomButtonStyles.fillGrayTL22,
        alignment: Alignment.centerRight, onTap: () async{ print('Widget tapped!'); },);
        
  }

  /// Section Widget
  Widget _buildShowSportsFacilities(BuildContext context) {
    return CustomTextFormField(
        controller: showSportsFacilitiesController,
        hintText: "Show me other sports facilities around",
        contentPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        fillColor: appTheme.gray5001);
  }

  /// Section Widget
  Widget _buildShowMeOtherOptions(BuildContext context) {
    return CustomElevatedButton(
        height: 56.v,
        width: 204.h,
        text: "Show me other options",
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientPrimaryToPurpleDecoration,
        alignment: Alignment.centerRight, onTap: () async { print('Widget tapped!'); },);
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 11.h),
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillGray5001
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder25),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("BodyWorks on Nadwiślańska 12 street",
                  style: TextStyle(
                      color: appTheme.black90001,
                      fontSize: 16.fSize,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500)),
              SizedBox(height: 7.v),
              Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text("250 meters",
                                style: TextStyle(
                                    color: theme.colorScheme.primaryContainer,
                                    fontSize: 14.fSize,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500))),
                        Container(
                            height: 4.adaptSize,
                            width: 4.adaptSize,
                            margin: EdgeInsets.only(
                                left: 8.h, top: 7.v, bottom: 8.v),
                            decoration: BoxDecoration(
                                color: appTheme.blueGray10003,
                                borderRadius: BorderRadius.circular(2.h))),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text("30 zł/one entrance all day",
                                style: TextStyle(
                                    color: theme.colorScheme.primaryContainer,
                                    fontSize: 14.fSize,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500)))
                      ])),
              SizedBox(height: 11.v),
              Padding(
                  padding: EdgeInsets.only(left: 32.h),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Container(
                        width: 82.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.h, vertical: 4.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder17),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Text("Gym️",
                                      style: TextStyle(
                                          color: appTheme.gray600,
                                          fontSize: 14.fSize,
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500))),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgFluentDumbbell20Regular,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(top: 1.v))
                            ])),
                    Container(
                        width: 75.h,
                        margin: EdgeInsets.only(left: 8.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.h, vertical: 6.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder17),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("SPA",
                                  style: TextStyle(
                                      color: appTheme.gray600,
                                      fontSize: 14.fSize,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgCilSpa,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(left: 6.h))
                            ])),
                    Container(
                        width: 79.h,
                        margin: EdgeInsets.only(left: 8.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.h, vertical: 6.v),
                        decoration: AppDecoration.fillOnPrimaryContainer
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder17),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("Pool",
                                  style: TextStyle(
                                      color: appTheme.gray600,
                                      fontSize: 14.fSize,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgCilPool,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(left: 6.h))
                            ]))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildMessage3(BuildContext context) {
    return Expanded(
        child: CustomTextFormField(
            controller: messageController,
            hintText: "Type a message...",
            textInputAction: TextInputAction.done,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 10.v, 20.h, 10.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgHiconLinearMicrophone1,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 44.v),
            contentPadding:
                EdgeInsets.only(left: 20.h, top: 11.v, bottom: 11.v)));
  }

  /// Section Widget
  Widget _buildSendAMessagePrompt(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 32.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL48),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildMessage3(context),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: CustomIconButton(
                      height: 44.adaptSize,
                      width: 44.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.gradientAmberToPurple,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgHiconLinearGray10004)))
            ]));
  }

  /// Common widget
  Widget _buildMessage(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(bottom: 24.v),
              child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillGrayTL16,
                  child: CustomImageView(imagePath: ImageConstant.imgBot))),
          Container(
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 17.v),
              decoration: AppDecoration.fillGray10004
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderBL24),
              child: Text(dynamicText,
                  style: TextStyle(
                      color: theme.colorScheme.primaryContainer,
                      fontSize: 16.fSize,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400)))
        ]);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapHiconLinear(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
