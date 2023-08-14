import 'package:flutter/material.dart';

class CustomTextInterFont extends StatelessWidget {
  CustomTextInterFont({super.key, required this.color, required this.text, required this.fontSize, required this.fontWeight});
  final Color color;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Inter",
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
