import 'dart:js';

import 'package:flutter/material.dart';
import 'package:treesa_s_application2/presentation/forgot_password/forgot_password_page_screen.dart';
import 'package:treesa_s_application2/presentation/login_screen/login_screen.dart';
import 'package:treesa_s_application2/presentation/mental_health_assessmenteight_screen/mental_health_assessmenteight_screen.dart';
import 'package:treesa_s_application2/presentation/mental_health_assessmentone_screen/mental_health_assessmentone_screen.dart';
import 'package:treesa_s_application2/presentation/mental_health_three_screen/mental_health_three_screen.dart';
import 'package:treesa_s_application2/presentation/mental_healthfifth_screen/mental_healthfifth_screen.dart';
import 'package:treesa_s_application2/presentation/mental_healthtwo_screen/mental_healthtwo_screen.dart';
import 'package:treesa_s_application2/presentation/signup_screen/signup_screen.dart';
import 'package:treesa_s_application2/presentation/home_screen/home_screen.dart';
import 'package:treesa_s_application2/presentation/screen_three_screen/screen_three_screen.dart';
import 'package:treesa_s_application2/presentation/sessions_screen/sessions_screen.dart';
import 'package:treesa_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:treesa_s_application2/presentation/resetpassword/reset_password_page_screen.dart';
import 'package:treesa_s_application2/presentation/mental_health_assessmentfourth_screen//mental_health_assessmentfourth_screen.dart';
class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String signupScreen = '/signup_screen';

  static const String homeScreen = '/home_screen';

  static const String screenThreeScreen = '/screen_three_screen';

  static const String sessionsScreen = '/sessions_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String forgotPasswordPageScreen = '/forgot_password_page_screen';

  static const String resetPasswordPageScreen = '/reset_password_page_screen';

  static const String mentalhealthassessmentfourteenScreen = '/mental_health_assessmentfourth_screen';


  static const String mentalHealthAssessmenteightScreen ='/mental_health_assessmenteight_screen';
static const String mentalHealthAssessmentoneScreen ='/mental_health_assessmentone_screen';
static const String mentalHealthAssessmentwoScreen ='/mental_healthtwo_screen';
static const String mentalHealthAssessmenthreeScreen ='/mental_health_three_screen';

static const String mentalHealthAssessmentfifthScreen ='/mental_healthfifth_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    signupScreen: (context) => SignupScreen(),
    homeScreen: (context) => HomeScreen(username: 'username'),
    screenThreeScreen: (context) => ScreenThreeScreen(),
    sessionsScreen: (context) => SessionsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    forgotPasswordPageScreen: (context) => ForgotPasswordPageScreen(),
    resetPasswordPageScreen: (context) => ResetPasswordPageScreen(),
    mentalhealthassessmentfourteenScreen: (context) => MentalHealthAssessmentfourteenScreen(username: 'username'),
    mentalHealthAssessmenteightScreen: (context) => MentalHealthAssessmenteightScreen(username: 'username'),
  mentalHealthAssessmentoneScreen: (context) => MentalHealthAssessmentoneScreen(username: 'username', text: 'text', imagePath: 'imagePath',),
    mentalHealthAssessmentwoScreen: (context) =>  MentalHealthAssessmentwoScreen(username: 'username'),
  mentalHealthAssessmenthreeScreen: (context) => MentalHealthAssessmenthreeScreen(username: 'username'),
  mentalHealthAssessmentfifthScreen: (context) => MentalHealthAssessmenfifthScreen(username: 'username'),
  

  };
}
