import 'package:flutter/material.dart';
import 'package:pharmacy2/core/views/screens/donits.dart';
import 'package:pharmacy2/core/views/screens/home.dart';
import 'package:pharmacy2/core/views/screens/login.dart';
import 'package:pharmacy2/core/views/screens/regester.dart';
import 'package:pharmacy2/core/views/screens/singup.dart';
import 'package:pharmacy2/core/views/screens/splash_screen.dart';

class RouteManager {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (ctx) => Home());
      case '/splash':
        return MaterialPageRoute(builder: (ctx) => SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (ctx) => LoginScreen());

      case '/regester':
        return MaterialPageRoute(builder: (ctx) => RegesterScreen());
      case '/singup':
        return MaterialPageRoute(builder: (ctx) => SingUpScreen());

      case '/donait':
        return MaterialPageRoute(builder: (ctx) => Donits());
    }
  }
}
