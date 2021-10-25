import 'package:flutter/material.dart';

class StarterScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F1DE),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRect(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/images/awal2.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50, left: MediaQuery.of(context).size.width * 0.18),
                  width: MediaQuery.of(context).size.height * 0.25,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Image.asset(
                    "assets/images/bell_awal.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                child: Text(
                  "Informasi Zonasi",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Color(0xFF3D405B),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                child: Text(
                  "Mendapatkan informasi area zonasi persebaran COVID-19 sesuai dengan lokasi yang dipilih.",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false),
                      child: Text(
                        "Masuk",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF2CC8F),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFF3D405B),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFF2CC8F),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/starter3'),
                      child: Icon(
                        Icons.arrow_forward_sharp,
                        size: 40,
                        color: Color(0xFF3D405B),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
