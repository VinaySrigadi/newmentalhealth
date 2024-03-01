import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:treesa_s_application2/core/app_export.dart';
import 'package:treesa_s_application2/widgets/custom_elevated_button.dart';
import 'package:treesa_s_application2/widgets/custom_text_form_field.dart';
import 'package:http/http.dart' as http;

class ResetPasswordPageScreen extends StatelessWidget {
  ResetPasswordPageScreen({Key? key})
      : super(
          key: key,
        );

  final TextEditingController reset_tokenController = TextEditingController();
  final TextEditingController new_passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
Future<void> resetpass(BuildContext context) async {
    print(_formKey.currentState);
    if (_formKey.currentState!.validate()) {
      String reset_token = reset_tokenController.text;
      String new_password = new_passwordController.text;
      

      
      // Make a request to your server with username and password
      try {
        var response = await http.post(
        Uri.parse('http://127.0.0.1:5000//reset_newpassword'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'reset_token':reset_token,
          'new_password':new_password
        }),
      );
        print(response.statusCode);
        if (response.statusCode == 200) {
          // If the server returns a 200 OK response,
          // then parse the JSON.
          jsonDecode(response.body);
          Navigator.pushNamed(context, '/login_screen');
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
                child: Column(
                  children: [
                    SizedBox(height: 20.h),
                    Text(
                      "Reset Token and User Id Has Been Sent To Your Mail",
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 10.h),
                    CustomTextFormField(
                      width: 311.h,
                      controller: reset_tokenController,
                      hintText: "Reset Token",
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "Now Remember Your New Password",
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 10.h),
                    CustomTextFormField(
                      width: 311.h,
                      controller: new_passwordController,
                      hintText: "New Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.text,
                    ),
                    SizedBox(height: 40.h),
                    CustomElevatedButton(
                      text: "Submit",
                      buttonStyle: CustomButtonStyles.none,
                      onPressed: () => resetpass(context),
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
