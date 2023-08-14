import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nova_agent/Screens/Login/OTP/ottp.dart';
import 'package:nova_agent/Screens/Login/login.dart';
import 'package:nova_agent/widget/custom_text_field.dart';
import 'package:nova_agent/color/colors.dart';
import 'package:nova_agent/widget/custom_text.dart';

import 'package:sizer/sizer.dart';

import '../../../widget/aniated/animated_button.dart';
import '../../../widget/aniated/scal_button.dart';
import '../../../widget/color_button.dart';

class ResetSuccess extends StatefulWidget {
  const ResetSuccess({super.key});

  @override
  State<ResetSuccess> createState() => _ResetSuccessState();
}

class _ResetSuccessState extends State<ResetSuccess> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  bool tap = false;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: h,
          width: w,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/background.jpg"), fit: BoxFit.fill)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: SizedBox(
                height: h - 24,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(alignment: Alignment.center, height: h / 2.5, child: Lottie.asset('assets/password reset success.json')),
                  Container(
                    alignment: Alignment.center,
                    child: FittedBox(
                      child: CustomText(
                          text: "Your account password\nreset successfully!\nNow you can login to\nyour account with new\npassword.",
                          fontSize: 20.sp,
                          fontFamily: "Inter",
                          color: Colors.green,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: h / 13,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: BounceButton(
                        child: CustomText(
                          color: white,
                          text: "LOGIN TO MY ACCOUNT",
                          fontFamily: 'Play',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.normal,
                        ),
                        onTap: () {
                          Future.delayed(Duration(milliseconds: 900)).then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              )));
                        },
                        height: 50,
                        width: 100,
                        duration: Duration(milliseconds: 900)),
                  ),
                  Spacer(),
                  SizedBox(
                    height: h / 50,
                  )
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
