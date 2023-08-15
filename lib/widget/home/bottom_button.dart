import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../color/colors.dart';

class HomeBottomButton extends StatefulWidget {
  final Function onTap;

  final Duration duration;
  final Widget child;

  const HomeBottomButton({Key? key, required this.onTap, required this.duration, required this.child}) : super(key: key);

  @override
  _HomeBottomButtonState createState() => _HomeBottomButtonState();
}

class _HomeBottomButtonState extends State<HomeBottomButton> with SingleTickerProviderStateMixin {
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
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.scale(
            scale: _animation.value,
            child: SizedBox(child: widget.child),
          );
        },
        // child: widget.text,
      ),
    );
  }
}
