import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:sizer/sizer.dart';

import '../../color/colors.dart';

class HomeButton extends StatefulWidget {
  final String text;
  final String text2;
  final String text3;
  final Function onTap;
  final IconData icon;

  final Duration duration;

  const HomeButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.text3,
    required this.text2,
    required this.onTap,
    required this.duration,
  }) : super(key: key);

  @override
  _HomeButtonState createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool tap = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 1.0,
      end: 0.9,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.repeat(
      reverse: true,
      period: Duration(seconds: 4),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        widget.onTap();
        _controller.forward().then((_) {
          _controller.reverse();
        });
      },
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
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.scale(
            scale: _animation.value,
            child: SizedBox(
              width: w / 2.1,
              child: Stack(
                children: [
                  Container(
                    height: h / 10,
                    width: w / 2.2,
                  ),
                  Positioned(
                    top: 5,
                    child: Image.asset(
                      "assets/home button.png",
                      height: h / 11,
                      width: w / 2.1,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: 5,
                    child: Container(
                      padding: EdgeInsets.only(left: 20),
                      height: h / 12,
                      width: w / 2.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Spacer(),
                              Text(
                                widget.text,
                                style: TextStyle(
                                  color: white,
                                  fontFamily: 'Play',
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                widget.text2,
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: 'Inter',
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 10,
                    child: SizedBox(
                      height: h / 9,
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: red,
                            radius: 10,
                            child: Text(
                              widget.text3,
                              style: TextStyle(fontSize: 10, color: white),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Icon(
                            widget.icon,
                            color: Colors.white60,
                            size: 22.sp,
                          ),
                          Spacer(
                            flex: 3,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        // child: widget.text,
      ),
    );
  }
}
