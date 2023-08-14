import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nova_agent/Screens/Login/reset_password/reset_password.dart';
import 'package:nova_agent/widget/custom_text_field.dart';
import 'package:nova_agent/color/colors.dart';
import 'package:nova_agent/widget/custom_text.dart';

import 'package:sizer/sizer.dart';

import '../../widget/aniated/scal_button.dart';
import '../../widget/main_button.dart';
import '../home/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                          text: "Hey there\nLogin to your Nova Care account",
                          fontSize: 15.sp,
                          fontFamily: "Inter",
                          color: white,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Container(alignment: Alignment.center, height: h / 2.8, child: Lottie.asset('assets/login screen image.json')),
                  CustomText(text: "Email", fontSize: 10.sp, fontFamily: "Inter", color: white, fontWeight: FontWeight.normal),
                  SizedBox(
                    height: h / 60,
                  ),
                  SizedBox(
                    height: h / 19,
                    child: CustomTextField(
                      hintText: "enter your email address",
                      controller: name,
                      keyInput: TextInputType.text,
                    ),
                  ),
                  SizedBox(
                    height: h / 60,
                  ),
                  CustomText(text: "Password", fontSize: 10.sp, fontFamily: "Inter", color: white, fontWeight: FontWeight.normal),
                  SizedBox(
                    height: h / 60,
                  ),
                  SizedBox(
                    height: h / 19,
                    child: CustomTextField(
                      hintText: "enter account password",
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
                          text: "LOGIN",
                          fontFamily: 'Play',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.normal,
                        ),
                        onTap: () {
                          Future.delayed(Duration(milliseconds: 400)).then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              )));
                        },
                        height: 50,
                        width: 100,
                        duration: Duration(milliseconds: 500)),
                  ),
                  Spacer(),
                  Row(children: <Widget>[
                    Expanded(
                        child: Divider(
                      color: const Color.fromARGB(255, 72, 70, 70),
                    )),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Or",
                        style: TextStyle(
                          fontSize: 9.sp,
                          fontFamily: "Inter",
                          color: Color.fromARGB(255, 144, 155, 164),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: const Color.fromARGB(255, 72, 70, 70),
                    )),
                  ]),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                          child: CustomText(
                              text: "Don't have an account yet?", fontSize: 9.sp, fontFamily: "Inter", color: white, fontWeight: FontWeight.normal)),
                      TextButton(
                        onPressed: () {},
                        child: FittedBox(
                            child: CustomText(
                                text: "Register Now", fontSize: 9.sp, fontFamily: "Inter", color: Colors.blue, fontWeight: FontWeight.normal)),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResetPassword(),
                            ));
                      },
                      child: FittedBox(
                          child: Text(
                        "Reset my password",
                        style: TextStyle(
                          fontSize: 9.sp,
                          fontFamily: "Inter",
                          color: Color.fromARGB(255, 144, 155, 164),
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 144, 155, 164),
                        ),
                      )),
                    ),
                  ),
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
