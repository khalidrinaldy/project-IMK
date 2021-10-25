import 'package:flutter/material.dart';

class Vaksinasi extends StatelessWidget {
  const Vaksinasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D405B),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/home/vaksinasi/background_top.png",
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Image.asset(
                    "assets/images/home/vaksinasi/photo3.png",
                    fit: BoxFit.fill,
                  ),
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
                            "Vaksinasi COVID-19",
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
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/registrasi-vaksin'),
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFF4F1DE),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              child: Image.asset(
                                "assets/images/home/vaksinasi/photo1.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              "Registrasi Vaksin COVID-19",
                              style: TextStyle(
                                fontFamily: "Ubuntu",
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color(0xFFB67E59),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/periksa-vaksin'),
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFF4F1DE),
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              child: Image.asset(
                                "assets/images/home/vaksinasi/photo2.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              "Periksa Vaksinasi COVID-19",
                              style: TextStyle(
                                fontFamily: "Ubuntu",
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color(0xFFB67E59),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
