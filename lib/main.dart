import 'package:flutter/material.dart';
import 'package:flutter_base/home.dart';

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
          title: Text('Streams'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

    //! dois tipos
    // assinaura unica = conectar apenas a um ouvinte.
    // assinaura multiplas = varios ouvintes. (broadcast)