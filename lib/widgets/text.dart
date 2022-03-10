import 'package:flutter/material.dart';

class TextAlign extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color;
  const TextAlign(
      {Key? key,
      required this.text,
      required this.fontsize,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(text,
          style: TextStyle(
              fontSize: fontsize, fontWeight: FontWeight.bold, color: color)),
    );
  }
}
