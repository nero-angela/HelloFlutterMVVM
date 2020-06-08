import 'package:flutter/material.dart';
import 'package:flutter_tutorial/screen/home/home_view.dart';
import 'package:flutter_tutorial/screen/login/login_view.dart';

class RoutePaths {
  static const String Home = '/';
  static const String Login = '/login';
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Home:
        return MaterialPageRoute(builder: (_) => HomeView());

      case RoutePaths.Login:
        return MaterialPageRoute(builder: (_) => LoginView());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
