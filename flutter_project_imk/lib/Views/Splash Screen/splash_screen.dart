import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
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
                  child: Image.asset("assets/images/logo.png"),
                ),
                Container(
                  height: 45,
                  child: Text(
                    "Co-End",
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
