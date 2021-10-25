import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacementNamed(context, '/starter1'));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D405B),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRect(
                child: Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    heightFactor: 1,
                    child: Image.asset(
                      "assets/images/splash.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/images/logo.png", fit: BoxFit.fill,),
                ),
                Container(
                  height: 45,
                  child: Text(
                    "CoHealth",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Color(0xFFF2CC8F),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
