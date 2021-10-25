import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AnalyticsScreen extends StatelessWidget {
  List cases = ["Terkonfirmasi", "Sembuh", "Meninggal"];
  List cengkareng = [367, 13076, 281];
  List jakartaBarat = [1949, 66360, 1302];
  List dkiJakarta = [11136, 408518, 7115];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F1DE),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, bottom: 10, top: MediaQuery.of(context).size.height * 0.12),
            child: Text(
              "Statistik Kasus COVID-19",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35, bottom: 10),
            child: Text(
              "${DateFormat("dd/MM/yyyy").format(DateTime.now()) + "   " + DateFormat("kk:mm").format(DateTime.now())}",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(left: 35, bottom: 10),
              width: 120,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF3D405B).withOpacity(0.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Cengkareng",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.25,
                child: Image.asset(
                  "assets/images/analytics/chart.png",
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: cases.length,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.25 * 0.3,
                          decoration: BoxDecoration(
                            color: Color(0xFF3D405B),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.topCenter,
                          child: Text(
                            cases[index],
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFFF4F1DE),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25 * 0.17),
                              width: MediaQuery.of(context).size.width * 0.9 * 0.99,
                              height: MediaQuery.of(context).size.height * 0.25 * 0.3,
                              decoration: BoxDecoration(
                                color: Color(0xFFD0B588),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 0.5,
                                ),
                              ),
                              alignment: Alignment.topCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Cengkareng",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        cengkareng[index].toString(),
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xFF3D405B),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Jakarta Barat",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        jakartaBarat[index].toString(),
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xFF3D405B),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "DKI Jakarta",
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        dkiJakarta[index].toString(),
                                        style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xFF3D405B),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
