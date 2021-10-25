import 'package:flutter/material.dart';

class DiagnosaMandiri extends StatelessWidget {
  const DiagnosaMandiri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D405B),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/home/info/background_top.png",
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
                            "Diagnosa Mandiri",
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
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(MediaQuery.of(context).size.height * 0.125),
                        topRight: Radius.circular(MediaQuery.of(context).size.height * 0.125),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Color(0xFFF4F1DE),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.height * 0.3,
                          height: MediaQuery.of(context).size.height * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xFFF2CC8F),
                          ),
                          child: Image.asset(
                            "assets/images/home/diagnosa/photo.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          child: Text(
                            "Diagnosa Mandiri",
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.w700,
                              fontSize: 21,
                              color: Color(0xFFB67E59),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Text(
                      "Hasil dan anjuran diagnosa mandiri",
                      style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color(0xFFF4F1DE),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/tes'),
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF2CC8F),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.width * 0.1,
                                width: MediaQuery.of(context).size.width * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.1 * 0.5),
                                  color: Color(0xFFF3E7C8),
                                ),
                              ),
                              Container(
                                height: MediaQuery.of(context).size.width * 0.1,
                                width: MediaQuery.of(context).size.width * 0.1,
                                child: Image.asset(
                                  "assets/images/home/diagnosa/chart.png",
                                  fit: BoxFit.fill,
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Hasil Diagnosa Mandiri",
                            style: TextStyle(
                              fontFamily: "Ubuntu",
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xFF3D405B),
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            size: 30,
                            color: Color(0xFF3D405B),
                          )
                        ],
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
