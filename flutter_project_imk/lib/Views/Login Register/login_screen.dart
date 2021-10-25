import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D405B),
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xFF3D405B),
          ),
        ),
        backgroundColor: Color(0xFFF2CC8F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.25,
            margin: EdgeInsets.only(top: 20),
            child: Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.fill,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "log in",
                      style: TextStyle(
                        fontFamily: "FiraSansExtraCondensed",
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 12,
                      decoration: BoxDecoration(
                        color: Color(0xFFF2CC8F),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: EdgeInsets.only(top: 35),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "username or email address",
                    labelStyle: TextStyle(
                      fontFamily: "FiraSansExtraCondensed",
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFC1C1C1),
                      ),
                    ),
                    hintText: "",
                    hintStyle: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: EdgeInsets.only(top: 15),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "password",
                    labelStyle: TextStyle(
                      fontFamily: "FiraSansExtraCondensed",
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFC1C1C1),
                      ),
                    ),
                    hintText: "",
                    hintStyle: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.cloud,
                        color: Color(0xFFC1C1C1),
                        size: 75,
                      ),
                      Text(
                        "log in",
                        style: TextStyle(
                          fontFamily: "FiraSansExtraCondensed",
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do not have an account?",
                  style: TextStyle(
                    fontFamily: "FiraSans",
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Container(width: 15,),
                GestureDetector(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/register', (route) => false),
                  child: Text(
                    "Register Here",
                    style: TextStyle(
                      fontFamily: "FiraSans",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFBF181F),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
