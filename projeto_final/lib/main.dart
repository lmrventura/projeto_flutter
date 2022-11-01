import 'package:flutter/material.dart';

import 'pages/home.dart';
import 'pages/adm.dart';
import 'pages/contatos.dart';
import 'pages/sobre.dart';

import 'pages/new.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => Home(),
        '/sobre': (_) => TransparentAppBar(),
        '/contato': (_) => Contato(),
        '/adm': (_) => Adm(),
      },
    );
  }
}
