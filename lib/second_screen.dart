import 'package:flutter/material.dart';
import 'package:flutter_base/title_appbar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TitleAppBar(
          color: Colors.red,
          title: "Second Screen Henrique",
        ),
      ),
    );
  }
}
