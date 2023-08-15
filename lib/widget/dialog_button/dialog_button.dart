import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../color/colors.dart';
import '../custom_text.dart';

class DialogButton extends StatefulWidget {
  const DialogButton({super.key, required this.text, required this.onTap, required this.color, required this.color2});
  final String text;
  final VoidCallback onTap;
  final Color color;
  final Color color2;

  @override
  State<DialogButton> createState() => _DialogButtonState();
}

class _DialogButtonState extends State<DialogButton> {
  bool tap = false;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTapDown: (_) {
        setState(() {
          tap = true;
        });
      },
      onSecondaryTapDown: (_) {
        setState(() {
          tap = true;
        });
      },
      onSecondaryTapUp: (_) {
        setState(() {
          tap = false;
        });
      },
      onTapUp: (_) {
        setState(() {
          tap = false;
        });
      },
      onTapCancel: () {
        setState(() {
          tap = false;
        });
      },
      onTap: widget.onTap,
      mouseCursor: MouseCursor.defer,
      child: AnimatedOpacity(
        opacity: tap ? 0.2 : 1,
        duration: Duration(milliseconds: 7),
        child: Container(
          alignment: Alignment.center,
          height: h / 17,
          width: w / 2.3,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(2),
            gradient: LinearGradient(colors: [widget.color, widget.color2], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: CustomText(
            color: white,
            text: widget.text,
            fontFamily: 'Play',
            fontSize: 13.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
