import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nova_agent/Screens/Login/reset-succses/reset_success.dart';

import 'package:nova_agent/widget/custom_text_field.dart';
import 'package:nova_agent/color/colors.dart';
import 'package:nova_agent/widget/custom_text.dart';

import 'package:pinput/pinput.dart';

import 'package:sizer/sizer.dart';

import '../../../widget/main_button.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
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
                  Container(
                    alignment: Alignment.center,
                    child: FittedBox(
                      child: CustomText(
                          text: "Now lets create a brand new\npassword to your account!",
                          fontSize: 15.sp,
                          fontFamily: "Inter ",
                          color: white,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(alignment: Alignment.center, height: h / 3, child: Lottie.asset('assets/verification.json')),
                  Container(
                    alignment: Alignment.center,
                    child: FittedBox(
                      child: CustomText(
                          text: "Enter the OTP we ust sent to your\nemail address and your new password.",
                          fontSize: 13.sp,
                          fontFamily: "Inter ",
                          color: white,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.center,
                    child: FittedBox(
                      child: CustomText(
                          text: "OTP received via the email", fontSize: 10.sp, fontFamily: "Inter ", color: white, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: Pinput(
                        androidSmsAutofillMethod: AndroidSmsAutofillMethod.none,
                        length: 5,
                        defaultPinTheme: PinTheme(
                            textStyle: TextStyle(color: white, fontSize: 17.sp),
                            height: h / 17,
                            width: h / 17,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 34, 40, 53).withOpacity(0.6),
                                border: Border.all(color: const Color.fromARGB(255, 24, 74, 115)),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomText(text: "New password", fontSize: 10.sp, fontFamily: "Inter", color: white, fontWeight: FontWeight.normal),
                  SizedBox(
                    height: h / 60,
                  ),
                  SizedBox(
                    height: h / 19,
                    child: CustomTextField(
                      hintText: "enter a new strong password ",
                      controller: name,
                      keyInput: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    height: h / 70,
                  ),
                  CustomText(text: "Confirm password", fontSize: 10.sp, fontFamily: "Inter", color: white, fontWeight: FontWeight.normal),
                  SizedBox(
                    height: h / 70,
                  ),
                  SizedBox(
                    height: h / 19,
                    child: CustomTextField(
                      hintText: "re enter your new password to confirm",
                      controller: password,
                      keyInput: TextInputType.text,
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: MainButton(
                        child: CustomText(
                          color: white,
                          text: "RESET MY PASSWORD",
                          fontFamily: 'Play',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.normal,
                        ),
                        onTap: () {
                          Future.delayed(Duration(milliseconds: 900)).then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResetSuccess(),
                              )));
                        },
                        height: 50,
                        width: 100,
                        duration: Duration(milliseconds: 500)),
                  ),
                  Spacer(),
                  SizedBox(
                    height: h / 40,
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
