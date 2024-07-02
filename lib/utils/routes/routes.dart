

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hasseb_project/utils/routes/routes_name.dart';
import 'package:hasseb_project/view/dashboard/dashboard_screen.dart';
import 'package:hasseb_project/view/forgotPassword/forgot_password_screen.dart';
import 'package:hasseb_project/view/login/login_screen.dart';
import 'package:hasseb_project/view/signUp/sign_up_screen.dart';

import '../../view/splash/splash_screen.dart';


class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final arguments=settings.arguments;
    switch (settings.name){
      case RoutesName.splashScreen:
      return MaterialPageRoute(builder: (_)=>SplashScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (_)=>LoginScreen());
      case RoutesName.signUpScreen:
        return MaterialPageRoute(builder: (_)=>SignUpScreen());
      case RoutesName.dashboardScreen:
        return MaterialPageRoute(builder: (_)=>DashboardScreen());
      case RoutesName.forgotPasswordScreen:
        return MaterialPageRoute(builder: (_)=>ForgotPasswordScreen());

      default:
        return MaterialPageRoute(builder: (_){
          return Scaffold(
            body: Center(
              child: Text('No route defind for ${settings.name}'),
            ),
          );
        });
    }
  }
}