import 'package:flutter/material.dart';
import 'package:flutter_project_imk/Routes/routes.dart';
import 'package:flutter_project_imk/Views/Splash%20Screen/splash_screen.dart';
import 'package:flutter_project_imk/Views/Starter%20Screen/starter_screen_1.dart';
import 'package:flutter_project_imk/Views/Starter%20Screen/starter_screen_2.dart';
import 'package:flutter_project_imk/Views/Starter%20Screen/starter_screen_3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StarterScreen1(),
      onGenerateRoute: Routes.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}