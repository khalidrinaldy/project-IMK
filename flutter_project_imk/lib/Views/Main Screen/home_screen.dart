import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/map_home.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/search'),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D405B).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.1 * 0.4),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.search_outlined,
                            size: 35,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            "Search Location",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Color(0xFFF4F1DE),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  color: Color(0xFF3D405B),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/vaksinasi'),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/home/vaksin.png"),
                                Text(
                                  "Vaksinasi COVID-19",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Color(0xFFF4F1DE),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/kebiasaan'),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/home/kebiasaan.png"),
                                Container(
                                  height: 10,
                                ),
                                Text(
                                  "Kebiasaan Baru",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Color(0xFFF4F1DE),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/info'),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/home/info.png"),
                                Text(
                                  "Info Penting",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Color(0xFFF4F1DE),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, '/diagnosa'),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/home/diagnose.png"),
                                Text(
                                  "Diagnosa Mandiri",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Color(0xFFF4F1DE),
                                  ),
                                ),
                              ],
                            ),
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
    );
  }
}
