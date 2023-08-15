import 'dart:ui';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:nova_agent/color/colors.dart';
import 'package:sizer/sizer.dart';

import '../widget/color_button.dart';
import '../widget/dialog_button/dialog_button.dart';
import '../widget/dialog_button/dialog_button2.dart';

class Popup {
  success(BuildContext context) {
    return showDialog(
        barrierColor: const Color.fromARGB(255, 18, 17, 17).withOpacity(0.6),
        context: context,
        builder: (context) {
          var h = MediaQuery.of(context).size.height;
          var w = MediaQuery.of(context).size.width;
          return AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.all(0),
              content: StatefulBuilder(// You need this, notice the parameters below:
                  builder: (BuildContext context, StateSetter setState) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 8),
                    child: Container(
                      width: w,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 117, 114, 114).withOpacity(0.6), borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                              height: h / 9,
                              child: Image.asset(
                                "assets/status_completed.png",
                                fit: BoxFit.fitHeight,
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                            child: Text(
                              "Your ticket sent to the relevant\n department successfully!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(172, 78, 215, 85),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Inter",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              alignment: Alignment.center,
                              child: DialogButton(
                                color: Color.fromARGB(255, 34, 237, 126),
                                color2: Color.fromARGB(144, 1, 69, 25),
                                onTap: () {},
                                text: "OK",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }));
        });
  }

  pending(BuildContext context) {
    return showDialog(
        barrierColor: const Color.fromARGB(255, 18, 17, 17).withOpacity(0.6),
        context: context,
        builder: (context) {
          var h = MediaQuery.of(context).size.height;
          var w = MediaQuery.of(context).size.width;
          return AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.all(0),
              content: StatefulBuilder(// You need this, notice the parameters below:
                  builder: (BuildContext context, StateSetter setState) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 8),
                    child: Container(
                      width: w,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 117, 114, 114).withOpacity(0.6), borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                              height: h / 9,
                              child: Image.asset(
                                "assets/status_pending.png",
                                fit: BoxFit.fitHeight,
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                            child: Text(
                              "Please enter the subject of the new ticket!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(172, 253, 216, 9),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Inter",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container(
                              alignment: Alignment.center,
                              child: DialogButton(
                                color: Color.fromARGB(172, 253, 216, 9),
                                color2: Color.fromARGB(172, 54, 46, 1),
                                onTap: () {},
                                text: "OK",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }));
        });
  }

  delete(BuildContext context) {
    return showDialog(
        barrierColor: const Color.fromARGB(255, 18, 17, 17).withOpacity(0.6),
        context: context,
        builder: (context) {
          var h = MediaQuery.of(context).size.height;
          var w = MediaQuery.of(context).size.width;
          return AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.all(0),
              insetPadding: EdgeInsets.all(0),
              content: StatefulBuilder(// You need this, notice the parameters below:
                  builder: (BuildContext context, StateSetter setState) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 8),
                    child: Container(
                      decoration: BoxDecoration(color: Color.fromARGB(255, 117, 114, 114).withOpacity(0.6), borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                              height: h / 7,
                              child: Image.asset(
                                "assets/icons8-question-mark-64.png",
                                fit: BoxFit.fitHeight,
                              )),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                            child: Text(
                              "Are you sure you need to delete this?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Inter",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: w / 1.3,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DialogButton2(
                                  color: Color.fromARGB(172, 155, 155, 153),
                                  color2: Color.fromARGB(172, 66, 66, 64),
                                  onTap: () {},
                                  text: "No",
                                ),
                                Spacer(),
                                DialogButton2(
                                  color: Color(0xff2596be),
                                  color2: Color.fromARGB(57, 3, 33, 184),
                                  onTap: () {},
                                  text: "YES,delete",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }));
        });
  }
}
