import 'package:flutter/material.dart';

class RegistrasiVaksin extends StatelessWidget {
  const RegistrasiVaksin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2CC8F),
      appBar: AppBar(
        title: Text(
          "Registrasi Vaksin COVID-19",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "NIK",
                        hintStyle: TextStyle(
                          fontFamily: "FiraSansExtraCondensed",
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Color(0xFFF2F1DE),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFC1C1C1),
                          ),
                        ),
                        prefixIcon: Icon(
                          Icons.badge,
                          size: 28,
                          color: Color(0xFFD0B588),
                        ),
                        prefixIconConstraints: BoxConstraints(
                          maxHeight: 28,
                          maxWidth: 28,
                        ),
                        prefixText: "   ",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Nama Lengkap",
                          hintStyle: TextStyle(
                            fontFamily: "FiraSansExtraCondensed",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFF2F1DE),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC1C1C1),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.person,
                            size: 28,
                            color: Color(0xFFD0B588),
                          ),
                          prefixIconConstraints: BoxConstraints(
                            maxHeight: 28,
                            maxWidth: 28,
                          ),
                          prefixText: "   ",
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
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.male,
                            size: 28,
                            color: Color(0xFFD0B588),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jenis Kelamin",
                                  style: TextStyle(
                                    fontFamily: "FiraSansExtraCondensed",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFFF2F1DE),
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: false,
                                        groupValue: true,
                                        onChanged: null,
                                        fillColor: MaterialStateProperty.all(
                                          Color(0xFFC4C4C4),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Laki-laki",
                                          style: TextStyle(
                                            fontFamily: "FiraSansExtraCondensed",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: Color(0xFFF2F1DE),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: false,
                                        groupValue: true,
                                        onChanged: null,
                                        fillColor: MaterialStateProperty.all(
                                          Color(0xFFC4C4C4),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Perempuan",
                                          style: TextStyle(
                                            fontFamily: "FiraSansExtraCondensed",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: Color(0xFFF2F1DE),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Tanggal Lahir (HH/BB/TTTT)",
                          hintStyle: TextStyle(
                            fontFamily: "FiraSansExtraCondensed",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFF2F1DE),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC1C1C1),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.date_range,
                            size: 28,
                            color: Color(0xFFD0B588),
                          ),
                          prefixIconConstraints: BoxConstraints(
                            maxHeight: 28,
                            maxWidth: 28,
                          ),
                          prefixText: "   ",
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
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.work,
                            size: 28,
                            color: Color(0xFFD0B588),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pekerjaan",
                                  style: TextStyle(
                                    fontFamily: "FiraSansExtraCondensed",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    color: Color(0xFFF2F1DE),
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: false,
                                        groupValue: true,
                                        onChanged: null,
                                        fillColor: MaterialStateProperty.all(
                                          Color(0xFFC4C4C4),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Lansia",
                                          style: TextStyle(
                                            fontFamily: "FiraSansExtraCondensed",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: Color(0xFFF2F1DE),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: false,
                                        groupValue: true,
                                        onChanged: null,
                                        fillColor: MaterialStateProperty.all(
                                          Color(0xFFC4C4C4),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Pendidik",
                                          style: TextStyle(
                                            fontFamily: "FiraSansExtraCondensed",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: Color(0xFFF2F1DE),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: false,
                                        groupValue: true,
                                        onChanged: null,
                                        fillColor: MaterialStateProperty.all(
                                          Color(0xFFC4C4C4),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Pegawai Pemerintah",
                                          style: TextStyle(
                                            fontFamily: "FiraSansExtraCondensed",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: Color(0xFFF2F1DE),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: false,
                                        groupValue: true,
                                        onChanged: null,
                                        fillColor: MaterialStateProperty.all(
                                          Color(0xFFC4C4C4),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Pedagang",
                                          style: TextStyle(
                                            fontFamily: "FiraSansExtraCondensed",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: Color(0xFFF2F1DE),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: false,
                                        groupValue: true,
                                        onChanged: null,
                                        fillColor: MaterialStateProperty.all(
                                          Color(0xFFC4C4C4),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "Yang Lain : ______________",
                                          style: TextStyle(
                                            fontFamily: "FiraSansExtraCondensed",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: Color(0xFFF2F1DE),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Alamat Lengkap",
                          hintStyle: TextStyle(
                            fontFamily: "FiraSansExtraCondensed",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFF2F1DE),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC1C1C1),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.location_on,
                            size: 28,
                            color: Color(0xFFD0B588),
                          ),
                          prefixIconConstraints: BoxConstraints(
                            maxHeight: 28,
                            maxWidth: 28,
                          ),
                          prefixText: "   ",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Nomor Telepon",
                          hintStyle: TextStyle(
                            fontFamily: "FiraSansExtraCondensed",
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFFF2F1DE),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFFC1C1C1),
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.contact_phone,
                            size: 28,
                            color: Color(0xFFD0B588),
                          ),
                          prefixIconConstraints: BoxConstraints(
                            maxHeight: 28,
                            maxWidth: 28,
                          ),
                          prefixText: "   ",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25, bottom: 30),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.25),
                      )
                    ]),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        alignment: Alignment.center,
                        backgroundColor: MaterialStateProperty.all(Color(0xFFF7EBD0)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      child: Text(
                        "DAFTAR",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color(0xFF3D405B),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
