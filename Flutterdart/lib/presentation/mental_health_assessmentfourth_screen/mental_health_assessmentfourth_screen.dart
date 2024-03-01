import 'dart:convert';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:treesa_s_application2/presentation/login_screen/login_screen.dart';
import 'package:treesa_s_application2/presentation/mental_health_assessmenteight_screen/mental_health_assessmenteight_screen.dart';
import 'package:treesa_s_application2/presentation/mental_health_assessmentone_screen/mental_health_assessmentone_screen.dart';
import 'package:treesa_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:treesa_s_application2/widgets/custom_elevated_button.dart';
import 'package:treesa_s_application2/widgets/custom_text_form_field.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:http/http.dart' as http;
// import 'package:/login_screen.dart';

class MentalHealthAssessmentfourteenScreen extends StatelessWidget {
  final String username;
  MentalHealthAssessmentfourteenScreen({required this.username});
     

  final TextEditingController journaling_notesController = TextEditingController();

// final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

Future<void> journaling(BuildContext context) async {
  // final prefs = await SharedPreferences.getInstance();
  // String? userId = prefs.getString('username1');


    String journaling_notes = journaling_notesController.text.toString();
    // print(journaling_notes);

    if (journaling_notes != '') {
      
      try {
        var response = await http.post(
          Uri.parse('http://127.0.0.1:5000/append'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            // 'username': LoginScreen.KEYNAME1,
                        'username':this.username ,
            'data': journaling_notes
          }
          
          ),
        );
        // print(this.username);
        // print();
        print(response.statusCode);
        if (response.statusCode == 200) {
          // If the server returns a 200 OK response,
          // then parse the JSON.
          jsonDecode(response.body);
          print('Note Succussfully Enter');
          journaling_notesController.clear();
          Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MentalHealthAssessmentoneScreen(username: username, text: '', imagePath: '',),
        ),
        );

          // Use jsonResponse here
        } else {
          // If the server returns an error response,
          // then throw an exception.
          throw Exception('Failed to log in');
        }
        // rest of the code
      } catch (e) {
        print('Request failed with error: $e');
      }
    } else {
      print('User ID is null');
    }
  
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 40.v,
          ),
          child: Column(
            children: [
              Text(
                "Journelling",
                style: CustomTextStyles.headlineLargeExtraBold,
              ),
              SizedBox(height: 12.v),
              Container(
                width: 287.h,
                margin: EdgeInsets.only(
                  left: 28.h,
                  right: 27.h,
                ),
                child: Text(
                  "Freely write down anything that's on your mind...",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumPrimaryContainer.copyWith(
                    height: 1.60,
                  ),
                ),
              ),
              SizedBox(height: 43.v),
              CustomTextFormField(
                controller:journaling_notesController,
                hintText:  "Today Thoughts",
       textInputAction: TextInputAction.done,
                     
                maxLines: 6,
              ),
              SizedBox(height: 48.v),
              CustomElevatedButton(
                text: "Continue",
                
                 onPressed: () => journaling(context),
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 12.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowleft,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    
                   
                  ),
                ), onTap: () async{  }, 
                // onTap: () => journaling(context),
                // onTap:(() async{
                //   print("object");
                // })
                
                  
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgMobile,
        margin: EdgeInsets.fromLTRB(16.h, 4.v, 311.h, 4.v),
      ),
    );
  }
}
