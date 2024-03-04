import 'package:treesa_s_application2/presentation/login_screen/login_screen.dart';
import 'package:treesa_s_application2/presentation/mental_health_assessmentfourth_screen/mental_health_assessmentfourth_screen.dart';

import '../home_screen/widgets/column_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:treesa_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:treesa_s_application2/widgets/custom_elevated_button.dart';


class HomeScreen extends StatelessWidget {
   final String username;
  const HomeScreen({required this.username}) ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 5.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                            onTap: () {
                              onTapTxtGoodafternoon(context);
                            },
                            child: Container(
                                width: 215.h,
                                margin: EdgeInsets.only(left: 25.h),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Good Afternoon",
                                          style:
                                              theme.textTheme.headlineMedium),
                                      TextSpan(
                                          text: ", ",
                                          style: CustomTextStyles
                                              .headlineMediumSemiBold),
                                      TextSpan(
                                          text: "Sarina!",
                                          style: CustomTextStyles
                                              .headlineMediumBold)
                                    ]),
                                    textAlign: TextAlign.left)))),
                    SizedBox(height: 26.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 25.h),
                            child: Text("How are you feeling today ?",
                                style: TextStyle(
                                    color: appTheme.blueGray900,
                                    fontSize: 16.fSize,
                                    fontFamily: 'Epilogue',
                                    fontWeight: FontWeight.w400)))),
                    SizedBox(height: 19.v),
                    _buildColumn(context),                    
                    SizedBox(height: 26.v),
                    _buildStack(context),
                    SizedBox(height: 26.v),
                    _buildRow(context),
                    SizedBox(height: 15.v),
                    _buildRow1(context),
                    SizedBox(height: 26.v),
                    _buildStack1(context)
                  ])))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: AppbarLeadingCircleimage(
            imagePath: ImageConstant.imgEllipse2,
            margin: EdgeInsets.only(left: 25.h, top: 11.v, bottom: 9.v)),
        actions: [
          Container(
              height: 32.v,
              width: 32.600006.h,
              margin: EdgeInsets.fromLTRB(12.h, 9.v, 12.h, 14.v),
              child: Stack(alignment: Alignment.topRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgGroup,
                    height: 24.v,
                    width: 19.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(top: 8.v, right: 13.h)),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        width: 21.adaptSize,
                        margin: EdgeInsets.only(left: 11.h, bottom: 11.v),
                        decoration: AppDecoration.fillDeepOrange.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Text("3",
                            style: TextStyle(
                                color: appTheme.gray50,
                                fontSize: 12.fSize,
                                fontFamily: 'Epilogue',
                                fontWeight: FontWeight.w400))))
              ]))
        ]);
  }

  /// Section Widget
Widget _buildColumn(BuildContext context) {
  return Align(
    alignment: Alignment.centerRight,
    child: SizedBox(
      height: 84.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 25.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(width: 23.h);
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return Container(
                width: 84.v,
                height: 84.v,
                child: CustomImageView(
                  imagePath: ImageConstant.imgRelax,
                  height: 84.v,
                  width: 84.v,
                ),
              );
            case 1:
              return Container(
                width: 84.v,
                height: 84.v,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettings2,
                  height: 84.v,
                  width: 84.v,
                ),
              );
            case 2:
              return Container(
                width: 84.v,
                height: 84.v,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettingsLime90001,
                  height: 84.v,
                  width: 84.v,
                ),
              );
            case 3:
              return Container(
                width: 84.v,
                height: 84.v,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettingsPrimarycontainer,
                  height: 84.v,
                  width: 84.v,
                ),
              );
            case 4:
              return Container(
                width: 84.v,
                height: 84.v,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettingsYellow900,
                  height: 84.v,
                  width: 84.v,
                ),
              );
            default:
              return Container();
          }
        },
      ),
    ),
  );
}

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: appTheme.orange5001,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Container(
            height: 151.v,
            width: 325.h,
            decoration: AppDecoration.fillOrange
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Stack(alignment: Alignment.topCenter, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup,
                  height: 35.v,
                  width: 258.h,
                  radius: BorderRadius.circular(17.h),
                  alignment: Alignment.bottomRight),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 21.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("1 on 1 Sessions",
                                      style: TextStyle(
                                          color: appTheme.gray800,
                                          fontSize: 22.fSize,
                                          fontFamily: 'Epilogue',
                                          fontWeight: FontWeight.w800)),
                                  SizedBox(height: 11.v),
                                  Opacity(
                                      opacity: 0.9,
                                      child: SizedBox(
                                          width: 175.h,
                                          child: Text(
                                              "Let’s open up to the things that matter the most ",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: appTheme.gray800
                                                      .withOpacity(0.67),
                                                  fontSize: 12.fSize,
                                                  fontFamily: 'Rubik',
                                                  fontWeight:
                                                      FontWeight.w400)))),
                                  SizedBox(height: 15.v),
                                  Row(children: [
                                    Text("Book Now",
                                        style: TextStyle(
                                            color: appTheme.deepOrange400,
                                            fontSize: 16.fSize,
                                            fontFamily: 'Epilogue',
                                            fontWeight: FontWeight.w700)),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgIcOutlineDateRange, //lightBrowncolor
                                        height: 17.adaptSize,
                                        width: 17.adaptSize,
                                        margin: EdgeInsets.only(left: 4.h))
                                  ])
                                ]),
                            CustomImageView(
                                imagePath: ImageConstant.imgLayer1,
                                height: 67.v,
                                width: 81.h,
                                margin: EdgeInsets.only(
                                    left: 23.h, top: 21.v, bottom: 15.v))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomElevatedButton(
              width: 155.h,
              text: "Journal",
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 15.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIonjournal,
                      height: 21.v,
                      width: 22.h,)),
                      onPressed: () {
 Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => MentalHealthAssessmentfourteenScreen(username: username),
    ),
    
  );print(username); },
              buttonStyle: CustomButtonStyles.fillGray, onTap: () async{  },),
          CustomElevatedButton(
              width: 155.h,
              text: "Library",
              margin: EdgeInsets.only(left: 15.h),
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 14.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcroundarticle,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              buttonStyle: CustomButtonStyles.fillGray, onTap: () async{  }, )
        ]));
  }

  /// Section Widget
  Widget _buildRow1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 17.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                  child: Container(
                      width: 246.h,
                      margin: EdgeInsets.only(left: 3.h, top: 2.v),
                      child: Text(
                          "“It is better to conquer yourself than to win a thousand battles”",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: appTheme.gray60001,
                              fontSize: 14.fSize,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w400)))),
              CustomImageView(
                  imagePath: ImageConstant.imgFaQuoteLeft,
                  height: 20.v,
                  width: 24.h,
                  margin: EdgeInsets.only(left: 26.h, top: 11.v, bottom: 10.v))
            ]));
  }

  /// Section Widget
  Widget _buildStack1(BuildContext context) {
    return SizedBox(
        height: 151.v,
        width: 325.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.green400,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Container(
                      height: 151.v,
                      width: 325.h,
                      decoration: AppDecoration.fillGreen.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup,
                            height: 35.v,
                            width: 258.h,
                            radius: BorderRadius.circular(17.h),
                            alignment: Alignment.bottomRight),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(left: 20.h, right: 162.h),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Plan Expired",
                                          style: TextStyle(
                                              color: theme.colorScheme
                                                  .onPrimaryContainer
                                                  .withOpacity(1),
                                              fontSize: 22.fSize,
                                              fontFamily: 'Epilogue',
                                              fontWeight: FontWeight.w800)),
                                      SizedBox(height: 9.v),
                                      Opacity(
                                          opacity: 0.9,
                                          child: SizedBox(
                                              width: 142.h,
                                              child: Text(
                                                  "Get back chat access and session credits",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: theme.colorScheme
                                                          .onPrimaryContainer,
                                                      fontSize: 12.fSize,
                                                      fontFamily: 'Rubik',
                                                      fontWeight:
                                                          FontWeight.w400)))),
                                      SizedBox(height: 12.v),
                                      Row(children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 3.v),
                                            child: Text("Buy More",
                                                style: TextStyle(
                                                    color: theme.colorScheme
                                                        .onPrimaryContainer
                                                        .withOpacity(1),
                                                    fontSize: 16.fSize,
                                                    fontFamily: 'Epilogue',
                                                    fontWeight:
                                                        FontWeight.w700))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEvaArrowBackFill,
                                            height: 16.adaptSize,
                                            width: 16.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 6.h, top: 4.v))
                                      ])
                                    ]))),
                        CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 62.v,
                            width: 80.h,
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.only(right: 28.h))
                      ])))),
          CustomImageView(
              imagePath: ImageConstant.imgContrast,
              height: 7.v,
              width: 12.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 19.h, top: 30.v))
        ]));
  }

Widget _buildBottomBar(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      boxShadow: [
        BoxShadow(
          color: appTheme.black90001.withOpacity(0.11),
          spreadRadius: 2.h,
          blurRadius: 2.h,
          offset: Offset(0, 4),
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgHome,
            margin: EdgeInsets.fromLTRB(24.h, 11.v, 23.h, 22.v),
            onTap: () {
              Navigator.pushNamed(context, '');
            },
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgHeroiconsOutli,
            margin: EdgeInsets.fromLTRB(24.h, 11.v, 23.h, 22.v),
             onTap: () {
              Navigator.pushNamed(context, '/sessions_screen');
            },
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgAkarIconsChatBubble,
            margin: EdgeInsets.fromLTRB(24.h, 11.v, 23.h, 22.v),
             onTap: () {
              Navigator.pushNamed(context, '/screen_three_screen');
            },
          ),
        ),
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgUserOnprimarycontainer,
            margin: EdgeInsets.fromLTRB(24.h, 11.v, 23.h, 22.v),
             onTap: () {
              Navigator.pushNamed(context, '');
            },
          ),
        ),
      ],
    ),
  );
}

  /// Navigates to the screenThreeScreen when the action is triggered.
  onTapTxtGoodafternoon(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.screenThreeScreen);
  }
}
