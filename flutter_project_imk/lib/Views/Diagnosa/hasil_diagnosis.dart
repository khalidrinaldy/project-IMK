import 'package:flutter/material.dart';

class HasilDiagnosis extends StatelessWidget {
  const HasilDiagnosis({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F1DE),
      appBar: AppBar(
        title: Text(
          "Hasil dan Anjuran",
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                child: Image.asset(
                  "assets/images/home/diagnosa/background_hasil.png",
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 15),
                child: Text(
                  "Bukan COVID-19",
                  style: TextStyle(
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 18, top: 10),
                child: Text(
                  "Saat ini kamu tidak memiliki gejala COVID-19. Tetap menerapkkan Perilaku Hidup Bersih dan Sehat, cuci tangan, jaga jarak, dan kenakan masker.",
                  style: TextStyle(
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 18, top: 10),
                width: MediaQuery.of(context).size.width*0.1,
                height: MediaQuery.of(context).size.height*0.2,
                child: Image.asset(
                  "assets/images/home/diagnosa/photo_hasil.png",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 23, top: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.error,
                      size: 30,
                      color: Color(0xFF3D405B),
                    ),
                    Container(width: 15,),
                    Text(
                      "Anda berpotensi terinfeksi COVID-19 sebesar\nundefined%",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.black,
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