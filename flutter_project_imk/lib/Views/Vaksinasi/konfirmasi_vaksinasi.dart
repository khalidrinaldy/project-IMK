import 'package:flutter/material.dart';

class KonfirmasiVaksinasi extends StatelessWidget {
  const KonfirmasiVaksinasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2CC8F),
      appBar: AppBar(
        title: Text(
          "Konfirmasi Penerima Vaksin",
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
                      padding: EdgeInsets.fromLTRB(12, 7, 5, 5),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Color(0xFF5BC873),
                        width: 1,
                        style: BorderStyle.solid,
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Nama",
                                    style: TextStyle(
                                      fontFamily: "Ubuntu",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: Color(0xFFF4F1DE),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.verified_rounded,
                                        size: 28,
                                        color: Color(0xFF5BC873),
                                      ),
                                      Text(
                                        "Sudah Vaksin",
                                        style: TextStyle(
                                          fontFamily: "Ubuntu",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                          color: Color(0xFF5BC873),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Text(
                                "JANAIRI ALDIKHA",
                                style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "NIK",
                                style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Color(0xFFF4F1DE),
                                ),
                              ),
                              Text(
                                "31750256998701480009",
                                style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Nomor Ponsel",
                                style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Color(0xFFF4F1DE),
                                ),
                              ),
                              Text(
                                "+62812345678910",
                                style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 7),
                            child: Icon(
                              Icons.error,
                              size: 30,
                              color: Color(0xFF59A5B6),
                            ),
                          ),
                          Text.rich(
                            TextSpan(
                              text: "Anda sudah pernah melakukan vaksinasi COVID-19",
                              style: TextStyle(
                                fontFamily: "Ubuntu",
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Color(0xFF59A5B6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
