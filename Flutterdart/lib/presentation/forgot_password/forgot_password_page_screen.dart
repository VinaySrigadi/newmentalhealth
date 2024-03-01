import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/custom_elevated_button.dart';
import 'package:treesa_s_application2/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;

class ForgotPasswordPageScreen extends StatelessWidget {
  ForgotPasswordPageScreen({Key? key})
      : super(
          key: key,
        );

  final TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
Future<void> forgotpass(BuildContext context) async {
    print(_formKey.currentState);
    if (_formKey.currentState!.validate()) {
      String email = emailController.text;
      print(email);

      
      // Make a request to your server with username and password
      try {
        var response = await http.post(
        Uri.parse('http://127.0.0.1:5000/send_token'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email
        }),
      );
        print(response.statusCode);
        if (response.statusCode == 200) {
          // If the server returns a 200 OK response,
          // then parse the JSON.
          jsonDecode(response.body);
          Navigator.pushNamed(context, '/reset_password_page_screen');
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
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h),
                child: 
                Column(
                    children: [
                      SizedBox(height: 20.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 259.v,
                        width: 301.h,
                        alignment: Alignment.center,
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "Email",
                        style: theme.textTheme.bodyLarge,
                      ),
                      SizedBox(height: 10.h),
                      CustomTextFormField(
                        width: 311.h,
                        controller: emailController,
                        hintText: "email@gmail.com",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 61.v),
                      CustomElevatedButton(
                        text: "Submit",
                        buttonStyle: CustomButtonStyles.none,
                        onPressed: () => forgotpass(context),
                        decoration: CustomButtonStyles.gradientPrimaryToRedDecoration, onTap: ()async {  },
                      ),
                    ],
                  ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
