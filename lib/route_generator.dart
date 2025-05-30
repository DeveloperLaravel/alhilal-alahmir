import 'package:flutter/material.dart';
import 'package:projectimagefirb/application/constants/const_routes.dart';
import 'package:projectimagefirb/persentation/screens/Lista_screen.dart';
import 'package:projectimagefirb/persentation/screens/doctor_page.dart';
import 'package:projectimagefirb/persentation/screens/login_lista.dart';
import 'package:projectimagefirb/persentation/screens/my_home_page.dart';
import 'package:projectimagefirb/persentation/screens/setteings_page.dart';
import 'package:projectimagefirb/persentation/screens/show_lista.dart';

class RouteGenerator {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case ConstRoutes.home:
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case ConstRoutes.about:
        return MaterialPageRoute(builder: (_) => ListaScreen());
      case ConstRoutes.doctor:
        return MaterialPageRoute(builder: (_) => DoctorPage());
      case ConstRoutes.loginlista:
        return MaterialPageRoute(builder: (_) => LoginLista());
      case ConstRoutes.showlist:
        return MaterialPageRoute(builder: (_) => ShowLista());
      case ConstRoutes.settings:
        return MaterialPageRoute(builder: (_) => SetteingsPage());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(body: Center(child: Text('No route defined for '))),
        );
    }
  }
}
