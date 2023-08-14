import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../color/colors.dart';
import '../custom_text.dart';

class BouncingButton extends StatefulWidget {
  BouncingButton({super.key,required this.text});
  final String text;
  @override
  _BouncingButtonState createState() => _BouncingButtonState();
}

class _BouncingButtonState extends State<BouncingButton> with SingleTickerProviderStateMixin {
  double? _scale;
  AnimationController? _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller!.value;
    return GestureDetector(
        onTapDown: _tapDown,
        onTapUp: _tapUp,
        child: Transform.scale(
          scale: _scale,
          child: _animatedButton(widget.text),
        ));
  }

  Widget _animatedButton(String text) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      height: h / 17,
      width: w / 1.3,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(2),
        gradient: LinearGradient(
            colors: [Color.fromARGB(255, 34, 237, 126), Color.fromARGB(144, 1, 69, 25)], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: CustomText(
        color: white,
        text: text,
        fontFamily: 'Play',
        fontSize: 13.sp,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  void _tapDown(TapDownDetails details) {
    _controller!.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller!.reverse();
  }
}
