import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nova_agent/Screens/Login/login.dart';
import 'package:nova_agent/color/colors.dart';
import 'package:nova_agent/widget/custom_text.dart';
import 'package:sizer/sizer.dart';
import '../../../widget/aniated/scal_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          child: SingleChildScrollView(
            child: SizedBox(
              height: h - 24,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          CustomText(
                            color: white,
                            text: "AGENT HOME",
                            fontFamily: 'Play',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          Container(alignment: Alignment.center, height: h / 2.5, child: Lottie.asset('assets/agent home screen.json')),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/header top.png',
                      width: w,
                      fit: BoxFit.fitWidth,
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.border_all_rounded, color: white, size: 20.sp)),
                    Positioned(
                      left: 44,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: white,
                            size: 20.sp,
                          )),
                    ),
                    Positioned(
                      right: 0,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person_pin_circle_outlined,
                            color: white,
                            size: 20.sp,
                          )),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    "kdnd d d cd cd cd cdc dc  dcdc  dcdc d cdcd cdcd c dcdc dcdcd c",
                    style: TextStyle(
                      color: Color.fromARGB(248, 228, 138, 3),
                      fontFamily: 'Play',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
