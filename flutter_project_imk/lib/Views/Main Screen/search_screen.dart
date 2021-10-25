import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  List<String> kelurahan = ["Kel. KAPUK", "Kel. KAPUK MUARA", "Kel. CENGKARENG TIMUR", "Kel. KEDOYA UTARA"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2CC8F),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/home/background_search.png",
              fit: BoxFit.fill,
            ),
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back,
                        color: Color(0xFFF2F1DE),
                        size: 40,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 15),
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                        color: Color(0xFFF4F1DE),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Search Lokasi",
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
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                height: 2,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Lokasi Anda",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xFFF4F1DE),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xFFF4F1DE),
                                ),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  size: 30,
                                  color: Color(0xFFE01C1C),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Kel. CENGKARENG",
                                      style: TextStyle(
                                        fontFamily: "Ubuntu",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Color(0xFFF4F1DE),
                                      ),
                                    ),
                                    Text(
                                      "Zona Merah",
                                      style: TextStyle(
                                        fontFamily: "Ubuntu",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: Color(0xFFF4F1DE),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Lokasi Sekitar",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Color(0xFFF4F1DE),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 400,
                          child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: kelurahan.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xFFF4F1DE),
                                      ),
                                      child: Icon(
                                        Icons.location_on_outlined,
                                        size: 30,
                                        color: Color(0xFFE01C1C),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            kelurahan[index],
                                            style: TextStyle(
                                              fontFamily: "Ubuntu",
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18,
                                              color: Color(0xFFF4F1DE),
                                            ),
                                          ),
                                          Text(
                                            "Zona Merah",
                                            style: TextStyle(
                                              fontFamily: "Ubuntu",
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15,
                                              color: Color(0xFFF4F1DE),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
