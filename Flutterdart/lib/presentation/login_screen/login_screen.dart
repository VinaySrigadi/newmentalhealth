// import 'dart:js';

import 'dart:convert';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/presentation/home_screen/home_screen.dart';
import 'package:treesa_s_application2/widgets/custom_icon_button.dart';
import 'package:treesa_s_application2/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;




 class LoginScreen extends StatelessWidget {
  
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  final TextEditingController userNameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  

Future<void> login(BuildContext context,String username) async {

  

  if (_formKey.currentState!.validate()) {
     username = userNameController.text;
    String password = passwordController.text;
    
    try {
      var response = await http.post(
        Uri.parse('http://127.0.0.1:5000/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'username': username,
          'password': password
        }

        ),
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(username: username),
        ),
        );
         } else {
        throw Exception('Failed to log in');
      }
    } catch (e) {
      if (e is Exception) {
        print('Request failed with error: $e');
      }  else {
        print('Request failed with error: $e');
      }
    }
  }
}
 
  @override
  Widget build(BuildContext context) {

    
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 390.h,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVector1,
                    height: 119.v,
                    width: 390.h,
                  ),
                  SizedBox(height: 25.v),
                  Text(
                    "Welcome To Mental Health App",
                    style: TextStyle(
                      color: appTheme.gray900,
                      fontSize: 64.fSize,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 26.v),
                  Text(
                    "Sign in to your account",
                    style: TextStyle(
                      color: appTheme.gray900,
                      fontSize: 18.fSize,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 42.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45.h),
                    child: CustomTextFormField(
                      controller: userNameController,
                      hintText: "Username",
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(18.h, 14.v, 13.h, 14.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLock,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 50.v,
                      ),
                    ),
                  ),
                  SizedBox(height: 41.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 45.h),
                    child: CustomTextFormField(
                      controller: passwordController,
                      hintText: "Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(18.h, 14.v, 13.h, 14.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLocation,
                          height: 17.v,
                          width: 14.h,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 50.v,
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 35.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 45.h),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/forgot_password_page_screen');
                          print('Forgot password tapped');
                        },
                        child: Text(
                          "Forgot  your User Id or password?",
                          style: TextStyle(
                            color: appTheme.gray400,
                            fontSize: 15.fSize,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 65.v),
                  _buildLoginForm(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 45.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector2,
              height: 305.v,
              width: 94.h,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 1.h,
                  top: 54.v,
                  bottom: 101.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                color: appTheme.gray900,
                                fontSize: 25.fSize,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 13.h),
                            child: CustomIconButton(
                              height: 34.v,
                              width: 56.h,
                              padding: EdgeInsets.all(8.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                
                              ),
                                  onTap: () {
                            String username = userNameController.text;
                            login(context, username);
                            print(username);
                          }
                          
                                                        
                              
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 97.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          
                          TextSpan(
                            text: "Don’t have an account? ",
                            style: CustomTextStyles.bodyMediumff262626,
                          ),
                          TextSpan(
                            text: "Create",
                            style: CustomTextStyles.bodyMediumff262626.copyWith(
                              decoration: TextDecoration.underline,                             

                            ),
                            
                           recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/signup_screen');
                            },
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
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
  

}