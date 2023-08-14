import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../color/colors.dart';
import '../custom_text.dart';

class BounceButton extends StatefulWidget {
  final Widget child;
  final Function onTap;
  final double height;
  final double width;
  final Duration duration;

  const BounceButton({
    Key? key,
    required this.child,
    required this.onTap,
    required this.height,
    required this.width,
    required this.duration,
  }) : super(key: key);

  @override
  _BounceButtonState createState() => _BounceButtonState();
}

class _BounceButtonState extends State<BounceButton> with SingleTickerProviderStateMixin {
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
      end: 0.95,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
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
      child: AnimatedOpacity(
        duration: Duration(microseconds: 8),
        opacity: tap ? 0.6 : 1,
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform.scale(
                scale: _animation.value,
                child: AnimatedContainer(
                    duration: Duration(milliseconds: 20),
                    alignment: Alignment.center,
                    height: h / 17,
                    width: w / 1.3,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(2),
                      gradient: LinearGradient(
                          colors: [Color.fromARGB(255, 34, 237, 126), Color.fromARGB(144, 1, 69, 25)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: child));
          },
          child: widget.child,
        ),
      ),
    );
  }
}
