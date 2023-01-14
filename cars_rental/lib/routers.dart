import 'package:flutter/material.dart';
import 'package:cars_rental/pages/forgotPassword.dart';
import 'package:cars_rental/pages/login.dart';
import 'package:cars_rental/pages/register.dart';

Map<String, WidgetBuilder> buildAppRoutes() {
  return {
    '/login': (BuildContext context) => new LoginPage(),
    '/register': (BuildContext context) => new RegisterPage(),
    '/forgotpassword': (BuildContext context) => new ForgotPasswordPage(),
  };
}
