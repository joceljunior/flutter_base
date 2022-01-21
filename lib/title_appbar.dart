import 'package:flutter/material.dart';

class TitleAppBar extends StatefulWidget {
  final String title;
  final Color color;
  const TitleAppBar({
    Key? key,
    required this.title,
    required this.color,
  }) : super(key: key);

  @override
  _TitleAppBarState createState() => _TitleAppBarState();
}

class _TitleAppBarState extends State<TitleAppBar> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: TextStyle(color: widget.color),
    );
  }
}
