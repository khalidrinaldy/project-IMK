import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> with TickerProviderStateMixin {
  bool showRiwayat = false;
  bool showSertifikat = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F1DE),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Image.asset(
                  "assets/images/account/background_account.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          ListView(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                color: Color(0xFFF5E9CC),
                height: MediaQuery.of(context).size.height * 0.14,
                margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Color(0xFFD0B588),
                      size: 60,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Janairi Aldikha",
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color(0xFF3F3D56),
                            ),
                          ),
                          Text(
                            "+62812345678910",
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF3F3D56),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit_outlined,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                color: Color(0xFFF5E9CC),
                height: MediaQuery.of(context).size.height * 0.1,
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vaksinasi",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3F3D56),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/account/riwayat.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            "Riwayat dan Tiket Vaksin",
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF3F3D56),
                            ),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              showRiwayat = !showRiwayat;
                            });
                            print(showRiwayat);
                          },
                          icon: Icon(
                            showRiwayat ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                            size: 30,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: AnimatedSize(
                  vsync: this,
                  duration: Duration(milliseconds: 700),
                  child: showRiwayat
                      ? Container(
                          key: UniqueKey(),
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFB67E59).withOpacity(0.26),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Image.asset(
                                  "assets/images/account/riwayat_detail.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                "Anda belum memiliki tiket untuk melakukan vaksinasi COVID-19. Silahkan periksa data kembali.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color(0xFF3F3D56),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width*0.22,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF3F3D56).withOpacity(0.88),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Text(
                                    "Periksa",
                                    style: TextStyle(
                                      fontFamily: "Ubuntu",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      : Container(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                color: Color(0xFFF5E9CC),
                height: MediaQuery.of(context).size.height * 0.1,
                margin: EdgeInsets.only(top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3F3D56),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/account/sertifikat.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            "Sertifikat Vaksin",
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF3F3D56),
                            ),
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              showSertifikat = !showSertifikat;
                            });
                          },
                          icon: Icon(
                            showSertifikat ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                            size: 30,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: AnimatedSize(
                  vsync: this,
                  duration: Duration(milliseconds: 700),
                  child: showSertifikat
                      ? Container(
                          key: UniqueKey(),
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFB67E59).withOpacity(0.26),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Image.asset(
                                  "assets/images/account/sertifikat_detail.png",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                "Anda belum memiliki sertifikat vaksinasi COVID-19.\nSilahkan periksa data kembali.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color(0xFF3F3D56),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width*0.22,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF3F3D56).withOpacity(0.88),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Text(
                                    "Periksa",
                                    style: TextStyle(
                                      fontFamily: "Ubuntu",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      : Container(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                color: Color(0xFFF5E9CC),
                height: MediaQuery.of(context).size.height * 0.11,
                margin: EdgeInsets.only(top: 8),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Akun",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3F3D56),
                      ),
                    ),
                    Text(
                      "Alamat Email",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xFF3F3D56),
                      ),
                    ),
                    Text(
                      "janairialdikha@gmail.com",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFF3F3D56).withOpacity(0.7),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                color: Color(0xFFF5E9CC),
                height: MediaQuery.of(context).size.height * 0.1,
                margin: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "NIK",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3F3D56),
                      ),
                    ),
                    Text(
                      "31750256998701480009",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3F3D56).withOpacity(0.75),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                color: Color(0xFFF5E9CC),
                height: MediaQuery.of(context).size.height * 0.1,
                margin: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3F3D56),
                      ),
                    ),
                    Text(
                      "********",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF3F3D56),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
