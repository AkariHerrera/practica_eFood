import 'package:flutter/material.dart';
import 'package:practica/pages/LoginPage.dart';
import 'package:practica/pages/WelcomePage.dart';
import 'package:practica/pages/eFood.dart';
import 'package:practica/pages/homepage.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'login': (BuildContext context) => LoginPage(),
    'welcome': (BuildContext context) => WelcomePage(),
    'eFood': (BuildContext context) => eFoodPage(),
  };
}
