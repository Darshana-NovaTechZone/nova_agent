import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:marquee/marquee.dart';
import 'package:morphable_shape/morphable_shape.dart';
import 'package:nova_agent/Screens/Login/login.dart';
import 'package:nova_agent/color/colors.dart';
import 'package:nova_agent/widget/custom_text.dart';
import 'package:sizer/sizer.dart';
import '../../../widget/aniated/scal_button.dart';
import '../../class/popup.dart';
import '../../widget/home/bottom_button.dart';
import '../../widget/home_button.dart';
import '../Login/OTP/ottp.dart';
import 'notification/notification.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
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
          child: Stack(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                          Container(alignment: Alignment.center, height: h / 3.5, child: Lottie.asset('assets/agent home screen.json')),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 35,
                      child: Marquee(
                        text: 'There once was a boy who told this story about a boy: "',
                        style: TextStyle(
                          color: Color.fromARGB(248, 228, 138, 3),
                          fontFamily: 'Play',
                          fontSize: 11.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          HomeButton(
                            text2: "PROJECT",
                            icon: Icons.card_travel_rounded,
                            text3: "1",
                            duration: Duration(milliseconds: 500),
                            onTap: () {},
                            text: "04",
                          ),
                          HomeButton(
                            text2: "DAILY TASK",
                            icon: Icons.calendar_today_outlined,
                            text3: "1",
                            duration: Duration(milliseconds: 500),
                            onTap: () {},
                            text: "04",
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HomeButton(
                          text2: "ALERT",
                          icon: Icons.warning_amber_rounded,
                          text3: "1",
                          duration: Duration(milliseconds: 500),
                          onTap: () {},
                          text: "04",
                        ),
                        HomeButton(
                          text2: "ATTENDANCE",
                          icon: Icons.tag_faces_outlined,
                          text3: "1",
                          duration: Duration(milliseconds: 500),
                          onTap: () {},
                          text: "04",
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HomeButton(
                          text2: "TICKETS",
                          icon: Icons.book_outlined,
                          text3: "1",
                          duration: Duration(milliseconds: 500),
                          onTap: () {},
                          text: "04",
                        ),
                        HomeButton(
                          text2: "VERSIONS",
                          icon: Icons.copy_outlined,
                          text3: "1",
                          duration: Duration(milliseconds: 500),
                          onTap: () {},
                          text: "04",
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                          child: CarouselSlider(
                        options: CarouselOptions(disableCenter: true, autoPlay: true),
                        items: imgList
                            .map((item) => Container(
                                  height: h / 9,
                                  width: w,
                                  child: Image.asset(
                                    "assets/ig.PNG",
                                    fit: BoxFit.fill,
                                  ),
                                ))
                            .toList(),
                      )),
                    ),
                    SizedBox(
                      height: 150,
                    )
                  ]),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeBottomButton(
                      child: Material(
                        color: Colors.black,
                        clipBehavior: Clip.antiAlias,
                        shape: BeveledRectangleBorder(
                          side: BorderSide(
                            color: Color.fromRGBO(89, 89, 89, 0.576),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              10,
                            ),
                            bottomRight: Radius.circular(
                              10,
                            ),
                          ),
                        ),
                        child: new Container(
                          color: Color.fromRGBO(10, 88, 161, 1),
                          height: h / 14,
                          width: w / 6,
                          child: Icon(
                            Icons.home,
                            color: white,
                          ),
                        ),
                      ),
                      duration: Duration(milliseconds: 500),
                      onTap: () {},
                    ),
                    HomeBottomButton(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: h / 14,
                        width: w / 4,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(10, 88, 161, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                          ),
                        ),
                        child: Image.asset(
                          "assets/icons8-loading-64 (1).png",
                          height: h / 17,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      duration: Duration(milliseconds: 500),
                      onTap: () {
                        Popup().delete(context);
                      },
                    ),
                    HomeBottomButton(
                      child: Material(
                        color: Colors.black,
                        clipBehavior: Clip.antiAlias,
                        shape: BeveledRectangleBorder(
                          side: BorderSide(
                            color: Color.fromRGBO(89, 89, 89, 0.576),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                              10,
                            ),
                            bottomLeft: Radius.circular(
                              10,
                            ),
                          ),
                        ),
                        child: new Container(
                          color: Color.fromRGBO(10, 88, 161, 1),
                          height: h / 14,
                          width: w / 6,
                          child: Icon(
                            Icons.chat_bubble_outline,
                            color: white,
                          ),
                        ),
                      ),
                      duration: Duration(milliseconds: 500),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/header top.png',
                width: w,
                fit: BoxFit.fitWidth,
              ),
              IconButton(
                  onPressed: () {
                    Popup().success(context);
                  },
                  icon: Icon(Icons.border_all_rounded, color: white, size: 20.sp)),
              Positioned(
                left: 44,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotificationScreen(),
                          ));
                    },
                    icon: Icon(
                      Icons.notifications,
                      color: white,
                      size: 20.sp,
                    )),
              ),
              Positioned(
                right: 0,
                child: IconButton(
                    onPressed: () {
                      Popup().pending(context);
                    },
                    icon: Icon(
                      Icons.person_pin_circle_outlined,
                      color: white,
                      size: 20.sp,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
