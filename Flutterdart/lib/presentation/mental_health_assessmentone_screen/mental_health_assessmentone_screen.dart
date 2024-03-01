import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:treesa_s_application2/presentation/mental_health_assessmentfourth_screen/mental_health_assessmentfourth_screen.dart';
import '../mental_health_assessmentone_screen/widgets/mentalhealthassessmentoneframe_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_trailing_button_one.dart';
import 'package:treesa_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:treesa_s_application2/widgets/custom_elevated_button.dart';

class MentalHealthAssessmentoneScreen extends StatefulWidget {
   final String username;
    final String text;
  final String imagePath;
  const MentalHealthAssessmentoneScreen({required this.text, required this.imagePath, required this.username});

  
Future<void> storeUserData(String username, String text) async {
  final url = 'http://127.0.0.1:5000/moodtrack';
  final headers = {'Content-Type': 'application/json'};
  final body = json.encode({'username': username, 'text': text});

  try {
    final response = await http.post(url as Uri, headers: headers, body: body);
    if (response.statusCode != 201) {
      throw Exception('Failed to store user data');
    }
  } catch (e) {
    // Handle the error
    print(e);
  }
}

  @override
  _MentalHealthAssessmentoneScreenState createState() => _MentalHealthAssessmentoneScreenState();
}





class _MentalHealthAssessmentoneScreenState extends State<MentalHealthAssessmentoneScreen> {
 int _selectedIndex = 0;

  void onTapText(int index,String text) {
    setState(() {
      _selectedIndex = index;
    }
   
    );
     print(text);

  }


 
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
                      width: 317.h,
                      margin: EdgeInsets.only(left: 12.h, right: 13.h),
                      child: Text("What’s your health goal for today?",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineLarge!
                              .copyWith(height: 1.27))),
                  SizedBox(height: 41.v),
                  _buildMentalHealthAssessmentOneFrame(context),
                  SizedBox(height: 48.v),
                  CustomElevatedButton(
                      text: "Continue",
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 12.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowleftPrimary,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      buttonStyle: CustomButtonStyles.fillGrayTL28,
                      buttonTextStyle: theme.textTheme.titleMedium!,
                      onPressed: () {
                        onTapContinue(context);
                      }, onTap: () async{  },),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 64.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgMobile,
            margin: EdgeInsets.only(left: 16.h, top: 4.v, bottom: 4.v),
            onTap: () {
              onTapMobile(context);
            }),
        title: AppbarTitle(
            text: "Assessment", margin: EdgeInsets.only(left: 12.h)),
        actions: [
          AppbarTrailingButtonOne(
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 14.v))
        ]);
  }

  /// Section Widget
/// Section Widget
Widget _buildMentalHealthAssessmentOneFrame(BuildContext context) {
  return ListView.separated(
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    separatorBuilder: (context, index) {
      return SizedBox(height: 12.v);
    },
    itemCount: 5, // Change this to 5
    itemBuilder: (context, index) {
      String text = "";
      String imagePath = "";

      switch (index) {
        case 0:
          text = "I wanna reduce stress";
          imagePath = ImageConstant.imgSolidRobot;
          break;
        case 1:
          text = "I want to add I wanna try";
          imagePath = ImageConstant.imgTelevision;
          break;
        case 2:
          text = "I want to cope with trauma";
          imagePath = ImageConstant.imgTelevision;
          break;
        case 3:
          text = "I want to improve sleep";
          imagePath = ImageConstant.imgTelevision;
          break;
        case 4:
          text = "I want to manage anger";
          imagePath = ImageConstant.imgTelevision;
          break;
        default:
          text = "";
          imagePath = "";
      }

      return  MentalhealthassessmentoneframeItemWidget(
        text: text,
        imagePath: imagePath,
        onTapText: () {
          onTapText(index,text);
        },
          selected: _selectedIndex == index,
           color: _selectedIndex == index ? Colors.orange : Colors.blue, // Change this line
      
       
      );
    },
  );
}
  /// Navigates to the homeScreen when the action is triggered.
  onTapMobile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the mentalHealthAssessmentsevenScreen when the action is triggered.
  // onTapContinue(BuildContext context) {
  //   Navigator.pushNamed(context, AppRoutes.mentalhealthassessmentfourteenScreen);
  // }
}
