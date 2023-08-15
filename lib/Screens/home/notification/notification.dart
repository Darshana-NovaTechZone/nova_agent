import 'package:flutter/material.dart';
import 'package:nova_agent/color/colors.dart';
import 'package:sizer/sizer.dart';

import '../../../widget/custom_text.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: PreferredSize(
              child: Material(
                  color: Colors.transparent,
                  child: Container(
                    color: Colors.transparent,
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/block - 3.png",
                          height: 56,
                          width: w,
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                          top: 5,
                          child: Row(
                            children: [
                              IconButton(
                                  color: const Color.fromARGB(255, 18, 66, 105),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: white,
                                  )),
                              CustomText(
                                color: white,
                                text: "Notification",
                                fontFamily: 'Inter',
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              preferredSize: Size(w, 56)),
          body: Container(
            height: h,
            width: w,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/background.jpg"), fit: BoxFit.fill),
            ),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: h - 20,
                  child: ListView.builder(
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/element shape.png"), fit: BoxFit.fill),
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          CustomText(
                            color: white,
                            text: "Notification",
                            fontFamily: 'Inter',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          Text(
                            "Notification snns sc sc s cscs c ssgvxgvhq bdqnsqsq hqbx q xqiqhuxbq xqbxuqx qaxquxqvx bxuquxyvq xqbxu",
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.white60,
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: CustomText(
                              color: Colors.white60,
                              text: "2023/05/5",
                              fontFamily: 'Inter',
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ]),
            ),
          )),
    );
  }
}
