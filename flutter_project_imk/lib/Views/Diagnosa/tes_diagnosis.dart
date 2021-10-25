import 'package:flutter/material.dart';

class TesDiagnosis extends StatelessWidget {
  List<String> riwayat = ["Diabetes", "Penyakit Jantung", "Hipertensi", "Asma", "PPOK", "Penyakit Ginjal Kronis"];
  List<String> gejala = ["Demam", "Batuk", "Pilek", "Sakit Tenggorokan", "Sesak Nafas", "Menggigil", "Sakit Kepala", "Gejala lain : ______"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F1DE),
      appBar: AppBar(
        title: Text(
          "Diagnosis Mandiri",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 21,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        backgroundColor: Color(0xFFF2CC8F),
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  "assets/images/home/diagnosa/background_tes.png",
                ),
              ),
            ],
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 15),
                child: Text(
                  "Diagnosis COVID-19",
                  style: TextStyle(
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  "Jawablah dengan jujur dan rinci untuk\nmendapatkan hasil yang akurat ",
                  style: TextStyle(
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apakah anda memiliki riwayat mengidap penyakit\ndi bawah ini ?",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: riwayat.length,
                        itemBuilder: (context, index) => Container(
                          height: 24,
                          child: Row(
                            children: [
                              Checkbox(
                                value: false,
                                tristate: true,
                                onChanged: null,
                              ),
                              Text(
                                riwayat[index],
                                style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Apakah anda sedang mengalami gejala seperti di\nbawah ini ?",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: gejala.length,
                        itemBuilder: (context, index) => Container(
                          height: 24,
                          child: Row(
                            children: [
                              Checkbox(
                                value: false,
                                tristate: true,
                                onChanged: null,
                              ),
                              Text(
                                gejala[index],
                                style: TextStyle(
                                  fontFamily: "Ubuntu",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kontak Suspek",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Sejak 1 minggu yang lalu, apakah anda\nmemiliki kontak erat dengan kasus suspek\nCOVID-19 ?",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 24,
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            tristate: true,
                            onChanged: null,
                          ),
                          Text(
                            "Ya",
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 24,
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            tristate: true,
                            onChanged: null,
                          ),
                          Text(
                            "Tidak",
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sejarah Perjalanan",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Apakah anda melakukan perjalanan antar\nkota atau negara diluar kota rumah anda\nsejak 1 minggu yang lalu ?",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            tristate: true,
                            onChanged: null,
                          ),
                          Text(
                            "Ya\nIsi nama kota atau negara yang dikunjungi\n____________________",
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 24,
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            tristate: true,
                            onChanged: null,
                          ),
                          Text(
                            "Tidak",
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 30),
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.25),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      onPressed: () => Navigator.pushReplacementNamed(context, '/hasil'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFF3D405B)),
                        alignment: Alignment.center,
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                      child: Text(
                        "Diagnosis",
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
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
