import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
/* import 'package:location_permissions/location_permissions.dart'; */

class MapRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3D405B),
      appBar: AppBar(
        title: Text(
          "Register",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: MediaQuery.of(context).size.height * 0.025,
            fontWeight: FontWeight.w500,
            color: Color(0xFF3D405B),
          ),
        ),
        backgroundColor: Color(0xFFF2CC8F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        leading: ModalRoute.of(context)!.canPop == true
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: MediaQuery.of(context).size.height * 0.035,
                  color: Color(0xFF3D405B),
                ),
                onPressed: () => Navigator.pop(context),
              )
            : null,
      ),
      body: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
      child: Column(
        children: [_buildMapImage(context), _buildTitle(context), _buildMessage(context), _buildButtonNext(context)],
      ),
    );
  }

  Widget _buildMapImage(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.height * 0.2,
          child: Image.asset(
            "assets/images/map_register.png",
            fit: BoxFit.fill,
          ),
        )
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Aktifkan Lokasi Anda",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              fontSize: MediaQuery.of(context).size.height * 0.04,
              color: Color(0xFFF4F1DE),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildMessage(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25, right: 25, top: 10),
      child: Text(
        "CoHealth membutuhkan izin untuk mengaktifkan akses lokasi Anda setiap waktu dibelakang layaar untuk dapat memberikan informasi terkait paparan COVID-19 di sekitar Anda.",
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600,
          fontSize: MediaQuery.of(context).size.height * 0.02,
          color: Color(0xFFD0B588),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildButtonNext(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        PermissionStatus permission = await Permission.location.request();
        if (permission.isGranted) {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        }
      },
      child: Container(
        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * (0.5 / 4),
              decoration: BoxDecoration(color: Color(0xFFF4F1DE), borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * (3 / 40))),
              child: Text(
                "Selanjutnya",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
