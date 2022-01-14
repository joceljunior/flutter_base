import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late StreamController<String> controller;

  @override
  void initState() {
    // iniciando fluxo de stream
    // assinatura unica
    //controller = StreamController<String>();
    // assinatura multipla
    controller = StreamController.broadcast();

    //stream rxdart
    controller = BehaviorSubject<String>();

    controller.stream.listen((event) {
      print(event);
    });

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
        Center(
          child: ElevatedButton(
            onPressed: () {
              // envia evento para o ouvinte
              controller.add('event');
            },
            child: const Text('Toque'),
          ),
        ),
        StreamBuilder(
          stream: controller.stream, // stram que o ouvindo vai escutar
          initialData: "Vazio",
          builder: (context, snapshot) {
            return Text(snapshot.data.toString());
          },
        ),
        StreamBuilder(
          stream: controller.stream, // stram que o ouvindo vai escutar
          initialData: "Vazio",
          builder: (context, snapshot) {
            return Text(snapshot.data.toString());
          },
        ),
      ],
    );
  }
}
