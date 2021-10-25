import 'package:flutter/material.dart';

class InfoPenting extends StatelessWidget {
  const InfoPenting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF3D405B),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/images/home/info/background_top.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Image.asset(
                    "assets/images/home/info/background_bottom.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Color(0xFFB67E59),
                              size: 35,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              "Info Penting",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 21,
                                color: Color(0xFFB67E59),
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
                      margin: EdgeInsets.only(top: 50),
                      width: MediaQuery.of(context).size.width * 0.85,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: Text(
                              "Recently",
                              style: TextStyle(
                                fontFamily: "Ubuntu",
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                color: Color(0xFFF4F1DE),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 8, 5, 8),
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFF2CC8F),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Zona Merah",
                                  style: TextStyle(
                                    fontFamily: "Ubuntu",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xFF3F3D56),
                                  ),
                                ),
                                Text(
                                  "CENGKARENG",
                                  style: TextStyle(
                                    fontFamily: "Ubuntu",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xFF3F3D56),
                                  ),
                                ),
                                Text(
                                  "Anda berada di zona merah penyebaran COVID-19.",
                                  style: TextStyle(
                                    fontFamily: "Ubuntu",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Color(0xFF3F3D56),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
