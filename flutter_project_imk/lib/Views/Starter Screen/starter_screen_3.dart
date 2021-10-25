import 'package:flutter/material.dart';

class StarterScreen3 extends StatelessWidget {
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
                    "assets/images/awal3.png",
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
                  margin: EdgeInsets.only(
                    top: 50,
                  ),
                  width: MediaQuery.of(context).size.height * 0.25,
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: Image.asset(
                    "assets/images/medic_awal.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 25, right: 25, top: 20),
                child: Text(
                  "Pemeriksaan dan Diagnosis Kesehatan serta Vaksinasi",
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
                  "Gunakan layanan fitur diagnosa mandiri. Serta dapat melakukan registrasi dan cek vaksinasi COVID-19.",
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
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30),
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back_sharp,
                          size: 40,
                          color: Color(0xFF3D405B),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false),
                      child: Container(
                        margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.2),
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFF3D405B),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Masuk",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xFFF2CC8F),
                          ),
                        ),
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
