import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/login.dart';
import 'package:flutter_application_1/presentation/screens/signin.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case '/signup':
        return MaterialPageRoute(builder: (_) => const SignupScreen());

      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}
