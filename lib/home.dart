import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/model.dart';
import 'package:flutter_base/title_appbar.dart';
import 'package:rxdart/rxdart.dart';

import 'second_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  var controller;
  var httpClient;

  @override
  void initState() {
    // iniciando fluxo de stream
    // assinatura unica
    controller = StreamController<String>();
    httpClient = Dio();
    // assinatura multipla
    //controller = StreamController.broadcast();

    //stream rxdart
    //controller = BehaviorSubject<String>();

    // controller.stream.listen((event) {
    //   print(event);
    // });

    super.initState();
  }

  @override
  void dispose() {
    // fechar stream
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        StreamBuilder<String>(
          stream: controller.stream, // stram que o ouvindo vai escutar
          initialData: "Vazio",
          builder: (context, snapshot) {
            return Text(snapshot.data!);
          },
        ),
        Center(
          child: ElevatedButton(
            child: TitleAppBar(
              title: "TOQUE",
              color: Colors.black,
            ),
            onPressed: () {
              mudaText();
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const SecondScreen()),
              // );
            },
          ),
        ),
      ],
    );
  }

  void mudaText() async {
    var model = Model();
    var response = await httpClient.get("http://localhost:7227/room");
    model.fromJson(jsonDecode(response.data));
    //controller.add("Cliquei");
  }
}
