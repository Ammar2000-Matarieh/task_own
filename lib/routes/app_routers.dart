import 'package:flutter/widgets.dart';
import 'package:task_one_2025/screens/home_screen.dart';
import 'package:task_one_2025/screens/login_screen.dart';
import 'package:task_one_2025/screens/register_screen.dart';

class AppRouters {
  static const String initRoute = '/';
  static Map<String, WidgetBuilder> routes = {
    "/": (context) => HomeScreen(),
    "/login": (context) => LoginScreen(),
    "/register": (context) => RegisterScreen(),
  };
}
