import '../sessions_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:treesa_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:treesa_s_application2/widgets/custom_drop_down.dart';
import 'package:treesa_s_application2/widgets/custom_icon_button.dart';

class SessionsScreen extends StatelessWidget {
  SessionsScreen({Key? key})
      : super(
          key: key,
        );

  List<String> dropdownItemList = [
    "Item One",
    "Item Two",
    "Item Three",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: Column(
                      children: [
                        _buildPeerMeetup(context),
                        SizedBox(height: 28.v),
                        _buildEightyEight(context),
                        SizedBox(height: 23.v),
                        _buildUserProfile(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse2,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 11.v,
          bottom: 9.v,
        ),
      ),
      actions: [
        Container(
          height: 32.v,
          width: 32.600006.h,
          margin: EdgeInsets.fromLTRB(12.h, 9.v, 12.h, 14.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 24.v,
                width: 19.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  top: 8.v,
                  right: 13.h,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 21.adaptSize,
                  margin: EdgeInsets.only(
                    left: 11.h,
                    bottom: 11.v,
                  ),
                  decoration: AppDecoration.fillDeepOrange.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Text(
                    "3",
                    style: TextStyle(
                      color: appTheme.gray50,
                      fontSize: 12.fSize,
                      fontFamily: 'Epilogue',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPeerMeetup(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.orange5001,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 151.v,
        width: 325.h,
        decoration: AppDecoration.fillOrange.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMaskGroup,
              height: 35.v,
              width: 258.h,
              radius: BorderRadius.circular(
                17.h,
              ),
              alignment: Alignment.bottomRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 98.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Upcoming Session",
                      style: TextStyle(
                        color: appTheme.gray800,
                        fontSize: 22.fSize,
                        fontFamily: 'Epilogue',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.9,
                      child: Text(
                        "Sahana V, Msc in Clinical Psychology",
                        style: TextStyle(
                          color: appTheme.gray800.withOpacity(0.67),
                          fontSize: 12.fSize,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Opacity(
                      opacity: 0.9,
                      child: Text(
                        "7:30 PM - 8:30 PM",
                        style: TextStyle(
                          color: appTheme.gray800.withOpacity(0.67),
                          fontSize: 12.fSize,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Row(
                      children: [
                        Text(
                          "Book Now",
                          style: TextStyle(
                            color: appTheme.deepOrange400,
                            fontSize: 16.fSize,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgOverflowMenu,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                          margin: EdgeInsets.only(
                            left: 6.h,
                            bottom: 2.v,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEightyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomDropDown(
            width: 128.h,
            icon: Container(
              margin: EdgeInsets.only(left: 6.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            hintText: "All Sessions",
            items: dropdownItemList,
            onChanged: (value) {},
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFaSort,
            height: 16.v,
            width: 12.h,
            margin: EdgeInsets.only(top: 3.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 6.0.v),
          child: SizedBox(
            width: 295.h,
            child: Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray10001.withOpacity(0.3),
            ),
          ),
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return UserprofileItemWidget();
      },
    );
  }

  /// Section Widget
  /// 
  /// 

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
              Navigator.pushNamed(context, '/home_screen');
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
}

//   Widget _buildBottomBar(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
//         boxShadow: [
//           BoxShadow(
//             color: appTheme.black90001.withOpacity(0.11),
//             spreadRadius: 2.h,
//             blurRadius: 2.h,
//             offset: Offset(
//               0,
//               4,
//             ),
//           ),
//         ],
//       ),
//       child: Padding(
//         padding: EdgeInsets.only(
//           left: 23.h,
//           right: 23.h,
//           bottom: 22.v,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CustomImageView(
//               imagePath: ImageConstant.imgContrast,
//               height: 7.v,
//               width: 12.h,
//               margin: EdgeInsets.only(left: 112.h),
//             ),
//             SizedBox(height: 4.v),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 GestureDetector(
//                 onTap: () {
//                   Navigator.pushNamed(context, '/home_screen');
//                 },child:
//                 CustomImageView(
//                   imagePath: ImageConstant.imgHome,
//                   height: 28.adaptSize,
//                   width: 28.adaptSize,
//                   margin: EdgeInsets.symmetric(vertical: 12.v),),
                  
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(left: 52.h),
//                   child: GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/sessions_screen');
//                   },
//                   child: CustomIconButton(
//                     height: 52.adaptSize,
//                     width: 52.adaptSize,
//                     padding: EdgeInsets.all(5.h),
//                     decoration: IconButtonStyleHelper.outlineBlueGray,
//                     child: CustomImageView(
//                       imagePath: ImageConstant.imgHeroiconsOutli,),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(left: 40.h),
//                    child: GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/screen_three_screen');
//                   },
//                   child: CustomIconButton(
//                     height: 52.adaptSize,
//                     width: 52.adaptSize,
//                     padding: EdgeInsets.all(10.h),
//                     decoration: IconButtonStyleHelper.outlineBlueGray1,
//                     child: CustomImageView(
//                       imagePath: ImageConstant.imgAkarIconsChatBubble,),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(left: 40.h),
//                    child: GestureDetector(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/sessions_screen');
//                   },
//                   child: CustomIconButton(
//                     height: 52.adaptSize,
//                     width: 52.adaptSize,
//                     padding: EdgeInsets.all(12.h),
//                     decoration: IconButtonStyleHelper.outlineBlueGray,
//                     child: CustomImageView(
//                       imagePath: ImageConstant.imgUserOnprimarycontainer,),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
