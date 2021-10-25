import 'package:flutter/material.dart';

class PeriksaVaksinasi extends StatelessWidget {
  const PeriksaVaksinasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2CC8F),
      appBar: AppBar(
        title: Text(
          "Periksa Vaksinasi COVID-19",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color(0xFFF2F1DE),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            size: 30,
            color: Color(0xFFF2F1DE),
          ),
        ),
        backgroundColor: Color(0xFF3D405B),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/home/vaksinasi/background.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: 14,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                        ),
                        color: Color(0xFFF2CC8F),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Text(
                        "Lengkapi Data Diri",
                        style: TextStyle(
                          fontFamily: "Ubuntu",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
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
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 7),
                            child: Icon(
                              Icons.error,
                              size: 28,
                              color: Color(0xFFB67E59),
                            ),
                          ),
                          Text(
                            "Mohon isi data anda sesuai dengan KTP/BPJS",
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Color(0xFFB67E59),
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
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.11,
                      color: Color(0xFFD0CDE1).withOpacity(0.5),
                      child: Text(
                        "NIK",
                        style: TextStyle(
                          fontFamily: "Ubuntu",
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.black,
                        ),
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
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.11,
                      color: Color(0xFFD0CDE1).withOpacity(0.5),
                      child: Text(
                        "Nomor ponsel yang terdaftar",
                        style: TextStyle(
                          fontFamily: "Ubuntu",
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 25, bottom: 30),
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.25),
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushReplacementNamed(context, '/konfirmasi-vaksin'),
                    style: ButtonStyle(
                      alignment: Alignment.center,
                      backgroundColor: MaterialStateProperty.all(Color(0xFF3D405B)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    child: Text(
                      "PERIKSA DATA",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color(0xFFF4F1DE),
                      ),
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
