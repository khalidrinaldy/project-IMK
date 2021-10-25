import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D405B),
      appBar: AppBar(
        title: Text(
          "Register",
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
          _buildTitleSignUp(),
          _buildRegisterTextField(),
          _buildButtonRegister(),
          _buildAlreadyHaveAnAccount(),
        ],
      ),
    );
  }

  Widget _buildTitleSignUp() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1),
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2CC8F),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                ),
                Text(
                  "sign up",
                  style: TextStyle(
                    fontFamily: "FiraSansExtraCondensed",
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterTextField() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.only(top: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "full name",
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
                  labelText: "email address",
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
                  labelText: "username",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.only(top: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "confirm password",
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
      ],
    );
  }

  Widget _buildButtonRegister() {
    return Container(
      margin: EdgeInsets.only(top: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/map_register'),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.cloud,
                  color: Color(0xFFC1C1C1),
                  size: 75,
                ),
                Text(
                  "sign up",
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
    );
  }

  Widget _buildAlreadyHaveAnAccount() {
    return Container(
      margin: EdgeInsets.only(top: 15,bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account?",
            style: TextStyle(
              fontFamily: "FiraSans",
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Container(
            width: 15,
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false),
            child: Text(
              "Login Here",
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
    );
  }
}
