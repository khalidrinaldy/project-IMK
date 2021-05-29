import 'package:flutter/material.dart';
import 'package:flutter_project_imk/Views/Login%20Register/login_screen.dart';
import 'package:flutter_project_imk/Views/Splash%20Screen/splash_screen.dart';
import 'package:flutter_project_imk/Views/Starter%20Screen/starter_screen_1.dart';
import 'package:flutter_project_imk/Views/Starter%20Screen/starter_screen_2.dart';
import 'package:flutter_project_imk/Views/Starter%20Screen/starter_screen_3.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
        break;
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
        break;
      case '/starter1':
        return MaterialPageRoute(builder: (_) => StarterScreen1());
        break;
      case '/starter2':
        return MaterialPageRoute(builder: (_) => StarterScreen2());
        break;
      case '/starter3':
        return MaterialPageRoute(builder: (_) => StarterScreen3());
        break;
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error"),),
        body: Center(child: Text("Page Not Found"),),
      );
    });
  }
}