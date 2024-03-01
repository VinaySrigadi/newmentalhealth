import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/custom_icon_button.dart';
import 'package:treesa_s_application2/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: must_be_immutable
class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController = TextEditingController();
      
  TextEditingController mobileController = TextEditingController();
  

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

Future<void> signup(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      String username = userNameController.text;
      String password = passwordController.text;
      String email = emailController.text;
      String mobile_number = mobileController.text;

      print(username);
      print(password);

      // Make a request to your server with username and password
      try {
        var response = await http.post(
        Uri.parse('http://127.0.0.1:5000/signup'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'username': username,
          'password': password,
          'email': email,
          'mobile_number': mobile_number,
        }),
      );
        print(response.statusCode);
        if (response.statusCode == 201) {
          // If the server returns a 200 OK response,
          // then parse the JSON.
          jsonDecode(response.body);
          Navigator.pushNamed(context, AppRoutes.loginScreen);
          // Use jsonResponse here
        } else {
          // If the server returns an error response,
          // then throw an exception.
          print('Failed to log in');
        }
        // rest of the code
      } catch (e) {
        throw Exception('Request failed with error: $e');
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
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 117.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgVector1,
                                  height: 119.v,
                                  width: 188.h,
                                  alignment: Alignment.centerLeft),
                              SizedBox(height: 48.v),
                              Text("Create account",
                                  style: TextStyle(
                                      color: appTheme.gray900,
                                      fontSize: 30.fSize,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700)),
                              SizedBox(height: 45.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 45.h),
                                  child: CustomTextFormField(
                                      controller: userNameController,
                                      hintText: "Username",
                                      validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a username';
                }
                return null;
              },
                                      prefix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              18.h, 14.v, 13.h, 14.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgLock,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize)),
                                      prefixConstraints:
                                          BoxConstraints(maxHeight: 50.v))),
                              SizedBox(height: 42.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 45.h),
                                  child: CustomTextFormField(
                                      controller: passwordController,
                                      hintText: "Password",
                                      validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a password';
                }
                return null;
              },
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      prefix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              18.h, 14.v, 13.h, 14.v),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgLocation,
                                              height: 17.v,
                                              width: 14.h)),
                                      prefixConstraints:
                                          BoxConstraints(maxHeight: 50.v),
                                      obscureText: true)),
                              SizedBox(height: 42.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 45.h),
                                  child: CustomTextFormField(
                                      controller: emailController,
                                      hintText: "E-mail",
                                      textInputAction: TextInputAction.done,
                                      textInputType: TextInputType.emailAddress,
                                      validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter an email';
                }
                return null;
              },
                                      prefix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              18.h, 19.v, 13.h, 19.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgEmail,
                                              height: 11.v,
                                              width: 14.h)),
                                      prefixConstraints:
                                          BoxConstraints(maxHeight: 50.v))),
                              SizedBox(height: 42.v),
                              Padding(
                      padding: EdgeInsets.symmetric(horizontal: 45.h),
                      child: CustomTextFormField(
                        controller: mobileController,
                        hintText: "Mobile",
                        textInputType: TextInputType.phone,
                         validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a mobile number';}return null;},
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(18.h, 19.v, 13.h, 19.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgLock,
                            height: 24.v,
                            width: 24.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(maxHeight: 50.h),
                      ),
                    ),
                      SizedBox(height: 24.v),
                              _buildSixtyTwo(context)
                            ])))))));
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: EdgeInsets.only(left: 56.h, top: 28.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFacebook,
                            height: 73.v,
                            width: 33.h),
                        Padding(
                            padding: EdgeInsets.only(bottom: 39.v),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 2.v),
                                      child: Text("Create",
                                          style: TextStyle(
                                              color: appTheme.gray900,
                                              fontSize: 25.fSize,
                                              fontFamily: 'Lato',
                                              fontWeight: FontWeight.w700))),
                                  Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: CustomIconButton(
                                          height: 34.v,
                                          width: 56.h,
                                          padding: EdgeInsets.all(8.h),
                                          onTap: () => signup(context),
                                          // {
                                          //   onTapBtnArrowLeft(context);
                                            
                                          // },
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgArrowLeft)))
                                ]))
                      ]),
                  SizedBox(height: 1.v),
                  Padding(
                      padding: EdgeInsets.only(left: 18.h),
                      child: Text("Or create account using social media",
                          style: TextStyle(
                              color: appTheme.gray900,
                              fontSize: 15.fSize,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400))),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.only(left: 63.h),
                      child: Row(children: [
                        CustomIconButton(
                            height: 35.adaptSize,
                            width: 35.adaptSize,
                            padding: EdgeInsets.all(8.h),
                            decoration: IconButtonStyleHelper.outlineBlack,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgFacebook)),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: CustomIconButton(
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                padding: EdgeInsets.all(6.h),
                                decoration:
                                    IconButtonStyleHelper.outlineBlackTL17,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgTrash))),
                        Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: CustomIconButton(
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                padding: EdgeInsets.all(5.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgGoogle)))
                      ]))
                ])));
  }

  /// Section Widget
  Widget _buildSixtyTwo(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: SizedBox(
            height: 362.v,
            width: 345.h,
            child: Stack(alignment: Alignment.topRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector2362x148,
                  height: 362.v,
                  width: 148.h,
                  alignment: Alignment.centerLeft),
              _buildFifteen(context)
            ])));
  }

  /// Navigates to the loginScreen when the action is triggered.
//   onTapBtnArrowLeft(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.loginScreen);
//   }
 }
