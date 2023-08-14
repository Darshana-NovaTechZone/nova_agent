import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

import '../color/colors.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyInput,
  });
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: white, fontSize: 13.sp),
      controller: controller,
      keyboardType: keyInput,
      // validator: (value) {
      //   var result = EmailValidator.validate(value.toString());
      //   return result ? null : "Please enter a valid email";
      // },
      decoration: InputDecoration(
          counterStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0), borderSide: BorderSide(color: const Color.fromARGB(255, 24, 74, 115), width: 0.4)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0), borderSide: BorderSide(color: const Color.fromARGB(255, 24, 74, 115), width: 0.4)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0), borderSide: BorderSide(color: const Color.fromARGB(255, 24, 74, 115), width: 0.6)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0), borderSide: BorderSide(color: const Color.fromARGB(255, 24, 74, 115), width: 0.6)),
          filled: true,
          hintStyle: TextStyle(color: const Color.fromARGB(255, 80, 79, 79), fontFamily: 'Inter', fontSize: 11.sp),
          hintText: hintText,
          fillColor: Color.fromARGB(255, 34, 40, 53).withOpacity(0.6)),
    );
  }
}
