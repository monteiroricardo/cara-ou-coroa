import 'dart:js';

import 'package:cara_ou_coroa/pages/home.dart';
import 'package:cara_ou_coroa/pages/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xff4DD0E1), // cor da barra superior
    systemNavigationBarColor: Color(0xff4DD0E1), // cor da barra inferior
    systemNavigationBarIconBrightness:
        Brightness.light, //ícones da barra superior
    statusBarIconBrightness: Brightness.light,

    // ícones da barra inferior
  ));
}
