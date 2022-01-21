import 'package:flutter/material.dart';
import 'package:flutter_base/home.dart';
import 'package:flutter_base/title_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Streams',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TitleAppBar(
            title: "Jocel",
            color: Colors.white,
          ),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

    //! dois tipos
    // assinaura unica = conectar apenas a um ouvinte.
    // assinaura multiplas = varios ouvintes. (broadcast)