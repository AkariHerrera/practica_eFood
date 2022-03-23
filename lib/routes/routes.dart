import 'package:flutter/material.dart';
import 'package:practica/pages/LoginPage.dart';
import 'package:practica/pages/MyPerfil_page.dart';
import 'package:practica/pages/WelcomePage.dart';
import 'package:practica/pages/couponPage.dart';
import 'package:practica/pages/eFood.dart';
import 'package:practica/pages/homepage.dart';
import 'package:practica/pages/listaha.dart';
import 'package:practica/pages/listapas.dart';
import 'package:practica/pages/listapi.dart';
import 'package:practica/pages/listasop.dart';
import 'package:practica/pages/perfil.dart';

import '../pages/coupondosPage.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'login': (BuildContext context) => LoginPage(),
    'welcome': (BuildContext context) => WelcomePage(),
    'eFood': (BuildContext context) => eFoodPage(),
    'perfil': (BuildContext context) => PerfilPage(),
    'myperfil': (BuildContext context) => MyPerfil(),
    'coupon': (BuildContext context) => CouponPage(),
    'listha': (BuildContext context) => ListahaPage(),
    'listpi': (BuildContext context) => ListpiPage(),
    'listpas': (BuildContext context) => ListpasPage(),
    'listso': (BuildContext context) => listasoPage(),
    'coupondos': (BuildContext context) => CoupondosPage(),
  };
}
