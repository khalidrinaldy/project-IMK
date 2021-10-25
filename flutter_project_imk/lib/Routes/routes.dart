import 'package:flutter/material.dart';
import 'package:flutter_project_imk/Views/Diagnosa/diagnosa_mandiri.dart';
import 'package:flutter_project_imk/Views/Diagnosa/hasil_diagnosis.dart';
import 'package:flutter_project_imk/Views/Diagnosa/tes_diagnosis.dart';
import 'package:flutter_project_imk/Views/Info/info_penting.dart';
import 'package:flutter_project_imk/Views/Kebiasaan%20Baru/kebiasaan_baru.dart';
import 'package:flutter_project_imk/Views/Login%20Register/login_screen.dart';
import 'package:flutter_project_imk/Views/Login%20Register/map_register.dart';
import 'package:flutter_project_imk/Views/Login%20Register/register_screen.dart';
import 'package:flutter_project_imk/Views/Main%20Screen/main_screen.dart';
import 'package:flutter_project_imk/Views/Main%20Screen/search_screen.dart';
import 'package:flutter_project_imk/Views/Splash%20Screen/splash_screen.dart';
import 'package:flutter_project_imk/Views/Starter%20Screen/starter_screen_1.dart';
import 'package:flutter_project_imk/Views/Starter%20Screen/starter_screen_2.dart';
import 'package:flutter_project_imk/Views/Starter%20Screen/starter_screen_3.dart';
import 'package:flutter_project_imk/Views/Vaksinasi/konfirmasi_vaksinasi.dart';
import 'package:flutter_project_imk/Views/Vaksinasi/periksa_vaksinasi.dart';
import 'package:flutter_project_imk/Views/Vaksinasi/registrasi_vaksinasi.dart';
import 'package:flutter_project_imk/Views/Vaksinasi/vaksinasi.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/starter1':
        return MaterialPageRoute(builder: (_) => StarterScreen1());
      case '/starter2':
        return MaterialPageRoute(builder: (_) => StarterScreen2());
      case '/starter3':
        return MaterialPageRoute(builder: (_) => StarterScreen3());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case '/map_register':
        return MaterialPageRoute(builder: (_) => MapRegister());
      case '/main':
        return MaterialPageRoute(builder: (_) => MainScreen());
      case '/search':
        return MaterialPageRoute(builder: (_) => SearchScreen());
      case '/kebiasaan':
        return MaterialPageRoute(builder: (_) => KebiasaanBaru());
      case '/info':
        return MaterialPageRoute(builder: (_) => InfoPenting());
      case '/diagnosa':
        return MaterialPageRoute(builder: (_) => DiagnosaMandiri());
      case '/tes':
        return MaterialPageRoute(builder: (_) => TesDiagnosis());
      case '/hasil':
        return MaterialPageRoute(builder: (_) => HasilDiagnosis());
      case '/vaksinasi':
        return MaterialPageRoute(builder: (_) => Vaksinasi());
      case '/registrasi-vaksin':
        return MaterialPageRoute(builder: (_) => RegistrasiVaksin());
      case '/periksa-vaksin':
        return MaterialPageRoute(builder: (_) => PeriksaVaksinasi());
      case '/konfirmasi-vaksin':
        return MaterialPageRoute(builder: (_) => KonfirmasiVaksinasi());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error"),),
        body: Center(child: Text("Page Not Found"),),
      );
    });
  }
}