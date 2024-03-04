import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:treesa_s_application2/presentationmental_healthtwo_screenmental_healthtwo_screen.dart';
// import '../mental_health_assessmentone_screen/widgets/mentalhealthassessmentoneframe_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/presentation/mental_healthfifth_screen/mental_healthfifth_screen.dart';
import 'package:treesa_s_application2/presentation/mental_healthtwo_screen/mental_healthtwo_screen.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_trailing_button_one.dart';
import 'package:treesa_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:treesa_s_application2/widgets/custom_elevated_button.dart';

class MentalHealthAssessmenthreeScreen extends StatefulWidget {
   final String username;
   
  const MentalHealthAssessmenthreeScreen({required this.username});

 

  @override
  _MentalHealthAssessmenthreeScreenState createState() => _MentalHealthAssessmenthreeScreenState();
}





class _MentalHealthAssessmenthreeScreenState extends State<MentalHealthAssessmenthreeScreen> {
 int _selectedIndex = 0;
 String _selectedText = "";

  void onTapText(String text) {
    setState(() {
      // _selectedIndex = index;
         _selectedText = text;
    }
   
    );
     print(_selectedText);


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
                      child: Text("Have You Sought Professional Health Before?",
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
                        onTapContinue(context, _selectedText, widget.username);
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
  return Column(
    children: List.generate(2, (index) {
      String text = "";
      String imagePath = "";

      switch (index) {
        case 0:
          text = "Yes,I had Professional treatment";
          imagePath = ImageConstant.imgSolidRobot;
          break;
        case 1:
          text = "No,I don't had  Professional treatment";
          imagePath = ImageConstant.imgTelevision;
          break;       
         
      }

      return RadioListTile<int>(
        value: index,
        groupValue: _selectedIndex,
        onChanged: (int? value) {
          setState(() {
            _selectedIndex = value!;
             onTapText(text);
          });
        },
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: imagePath,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.h, bottom: 2.v),
              child: Text(
                text,
                style: CustomTextStyles.titleMediumBold,
              ),
            ),
          ],
        ),
      );
    }),
  );
}
  /// Navigates to the homeScreen when the action is triggered.
  onTapMobile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }

  /// Navigates to the mentalHealthAssessmentsevenScreen when the action is triggered.
  Future<void> onTapContinue(BuildContext context,String selectedText, String username)async {


//  storeUserData(String username, String text) async {
  final url = 'http://127.0.0.1:5000/moodtrack';
  final headers = {'Content-Type': 'application/json'};
  final body = json.encode({'username': username, 'text': selectedText});

  try {
    final response = await http.post(Uri.parse(url), headers: headers, body: body);
    if (response.statusCode == 200) {
       Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MentalHealthAssessmenfifthScreen(username: username),
        ),
        );
  print("Updated");


      // throw Exception('updated');
    }
  } catch (e) {
    // Handle the error
    print(e);
  }
}



  }
