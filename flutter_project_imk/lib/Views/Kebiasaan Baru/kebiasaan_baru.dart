import 'package:flutter/material.dart';

class KebiasaanBaru extends StatefulWidget {
  const KebiasaanBaru({Key? key}) : super(key: key);

  @override
  _KebiasaanBaruState createState() => _KebiasaanBaruState();
}

class _KebiasaanBaruState extends State<KebiasaanBaru> with TickerProviderStateMixin {
  List<String> kebiasaan = [
    "Belanja ke pasar /\npusat perbelanjaan",
    "Berada di tempat\nkerja / usaha",
    "Menggunakan\ntransportasi umum",
    "Beribadah dirumah\nibadah",
    "Kebersihan tempat\nUMKM & PKL"
  ];

  List<List<Widget>> content = [
    [
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Selalu ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "memakai\nmasker",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: " dengan benar",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Jaga jarak ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "minimal 1 meter",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Cucilah tangan ",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "dengan\nsabun atau hand sanitizer",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Melakukan transaksi ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "non-tunai",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Hindari ",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "menyentuh wajah",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Batasilah ",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "waktu berbelanja",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
    ],
    [
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Pastikan ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "kondisi sehat\n",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "saat bekerja",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Jaga jarak ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "minimal 1 meter",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Cucilah tangan ",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "dengan\nsabun atau hand sanitizer",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Tetap ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "memakai masker\n",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "selama bekerja",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Minimkan ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "kontak fisik",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Gunakan siku ",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "untuk\nmembuka pintu / tombol lift",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
    ],
    [
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Bawa helm sendiri\n",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "jika menggunakan ojek",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Jaga jarak ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "minimal 1 meter",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Cucilah tangan ",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "dengan\nsabun atau hand sanitizer",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Tetap ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "memakai masker\n",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Minimkan ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "kontak fisik",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Melakukan transaksi ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "non-tunai",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
    ],
    [
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Pastikan ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "kondisi sehat\n",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "saat beribadah",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Jaga jarak ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "minimal 1 meter",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Cucilah tangan ",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "dengan\nsabun atau hand sanitizer",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Saat beribadah tetap\n",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "memakai masker",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Minimkan ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "kontak fisik",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Segera pulang ",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "setelah\nselesai beribadah",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
    ],
    [
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Tetap jaga jarak ",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "saat\nmengantri",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Jaga jarak ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "minimal 1 meter",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Cucilah tangan ",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "dengan\nsabun atau hand sanitizer",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Saat beribadah tetap\n",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "memakai masker",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Minimkan ",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: "kontak fisik",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
      Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "Bersihkan / disinfeksi\n",
              style: TextStyle(
                color: Color(0xFFB67E59),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFB67E59),
              ),
            ),
            TextSpan(
              text: "tempat usaha secara berkala",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: "Roboto",
          fontWeight: FontWeight.w500,
          fontSize: 11,
        ),
      ),
    ],
  ];

  List<bool> showKebiasaan = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D405B),
      /* appBar: AppBar(
        title: Text(
          "Kebiasaan Baru",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            fontSize: 21,
            color: Color(0xFFB67E59),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFFB67E59),
            size: 35,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ), */
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/home/kebiasaan/background.png",
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
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
                            "Kebiasaan Baru",
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
              Container(
                margin: EdgeInsets.only(top: 15),
                height: 600,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: kebiasaan.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: MediaQuery.of(context).size.width * 0.85 * 0.3,
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.85 * 0.8,
                                      height: MediaQuery.of(context).size.width * 0.85 * 0.29,
                                      margin: EdgeInsets.only(
                                        left: MediaQuery.of(context).size.width * 0.85 * 0.25,
                                      ),
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFB67E59),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "KEBIASAAN BARU #${index + 1}",
                                                style: TextStyle(
                                                  fontFamily: "Ubuntu",
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15,
                                                  color: Color(0xFFF4F1DE),
                                                ),
                                              ),
                                              Text(
                                                "${kebiasaan[index]}",
                                                style: TextStyle(
                                                  fontFamily: "Poppins",
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                  color: Color(0xFF3D405B),
                                                ),
                                              ),
                                            ],
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              setState(() {
                                                showKebiasaan[index] = !showKebiasaan[index];
                                              });
                                            },
                                            icon: Icon(
                                              showKebiasaan[index] ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                                              size: 40,
                                              color: Color(0xFFF4F1DE),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.85 * 0.3,
                                  height: MediaQuery.of(context).size.width * 0.85 * 0.3,
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF2CC8F),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Image.asset(
                                    "assets/images/home/kebiasaan/photo$index.png",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: AnimatedSize(
                          vsync: this,
                          duration: Duration(milliseconds: 700),
                          child: showKebiasaan[index]
                              ? Container(
                                  key: UniqueKey(),
                                  width: MediaQuery.of(context).size.width * 0.8,
                                  height: 500,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFFF4F1DE),
                                  ),
                                  child: GridView.builder(
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: content[0].length,
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 3.0,
                                      mainAxisSpacing: 10.0,
                                    ),
                                    itemBuilder: (context, i) => Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        content[index][i],
                                        Image.asset(
                                          "assets/images/home/kebiasaan/${index + 1}/${i + 1}.png",
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              : Container(),
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
    );
  }
}
