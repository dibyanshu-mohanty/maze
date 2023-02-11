import "package:flutter/material.dart";
import 'dart:ui';
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';

import '../../utils/appscreenbackground.dart';

class RewardDetail extends StatelessWidget {
  const RewardDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 100.h,
            width: 100.w,
            child: Stack(children: [
              const AppScreenBackground(),
              Container(
                width: 80.w,
                height: 2.5.h,
                margin: EdgeInsets.only(left: 4.4.w, top: 5.h),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 36.w,
                    ),
                    Text(
                      "Reward",
                      textAlign: TextAlign.center,
                      style: AppFont.mediumBoldColorWhite_13,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(4.4.w, 12.h, 0, 0),
                height: 20.5.h,
                width: 91.12.w,
                child: Image.asset(
                  AppImages.banner,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(11.66.w, 16.625.h, 0, 0),
                height: 9.h,
                width: 25.w,
                child: Image.asset(AppImages.airtel),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(4.4.w, 30.125.h, 0, 0),
                height: 46.125.h,
                width: 91.11.w,
                decoration: BoxDecoration(
                    color: AppColors.colorGrey2,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 62.w,
                        height: 3.625.h,
                        margin: EdgeInsets.fromLTRB(5.182.w, 4.87.h, 0, 0),
                        child: Text(
                          "50 Rupees Cashback*",
                          style: AppFont.lightColorWhite_22,
                        )),
                    Container(
                        width: 35.36.w,
                        height: 2.25.h,
                        margin: EdgeInsets.fromLTRB(5.182.w, 3, 0, 0),
                        child: Text(
                          "Telecommunication",
                          style: AppFont.lightColorWhite_12,
                        )),
                    Container(
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 95, 109, 0.37),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        margin: EdgeInsets.fromLTRB(5.182.w, 17, 0, 0),
                        height: 5.5.h,
                        width: 81.11.w,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(8.8.w, 10, 0, 0),
                          height: 2.8.h,
                          width: 69.5.w,
                          child: Text(
                            "* * * * * * * * * * * * * * * *",
                            textAlign: TextAlign.center,
                            style: AppFont.lightColorWhite_22,
                          ),
                        )),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            //decoration: BoxDecoration(color: Colors.black),
                            margin: EdgeInsets.fromLTRB(5.182.w, 46, 0, 0),
                            height: 2.h,
                            width: 2.w,
                            child: Icon(
                              Icons.calendar_today,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                              //decoration: BoxDecoration(color: Colors.black),
                              margin: EdgeInsets.fromLTRB(20, 48, 0, 0),
                              height: 2.5.h,
                              width: 18.33.w,
                              child: Text(
                                "Expires on",
                                style: AppFont.lightColorWhite_15,
                              )),
                          Container(
                              //decoration: BoxDecoration(color: Colors.black),
                              margin: EdgeInsets.fromLTRB(33.88.w, 48, 0, 0),
                              height: 2.5.h,
                              width: 21.66.w,
                              child: Text(
                                "10/03/2023",
                                style: AppFont.lightColorWhite_15,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            //decoration: BoxDecoration(color: Colors.black),
                            margin: EdgeInsets.fromLTRB(5.182.w, 23, 0, 0),
                            height: 2.h,
                            width: 2.w,
                            child: Icon(
                              Icons.info_outline,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                              //decoration: BoxDecoration(color: Colors.black),
                              margin: EdgeInsets.fromLTRB(20, 23, 0, 0),
                              height: 2.5.h,
                              width: 26.9.w,
                              child: Text(
                                "About the offer",
                                style: AppFont.lightColorWhite_15,
                              )),
                          Container(
                            //decoration: BoxDecoration(color: Colors.black),
                            margin: EdgeInsets.fromLTRB(40.833.w, 18, 0, 0),
                            height: 2.h,
                            width: 2.w,
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15.27.w, 4.75.h, 0, 0),
                      height: 5.5.h,
                      width: 60.27.w,
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xffffc371)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(200),
                            ))),
                        onPressed: () => {},
                        child: Text(
                          "Redeem Coupon",
                          style: AppFont.mediumBoldColorBlack_14,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      //decoration: BoxDecoration(color: Colors.black),
                      margin: EdgeInsets.fromLTRB(8.33.w, 79.h, 0, 0),
                      height: 2.h,
                      width: 2.w,
                      child: Icon(
                        Icons.error_outline,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        //decoration: BoxDecoration(color: Colors.black),
                        margin: EdgeInsets.fromLTRB(6.5.w, 79.5.h, 0, 0),
                        height: 2.5.h,
                        width: 40.w,
                        child: Text(
                          "Terms and Condition",
                          style: AppFont.lightColorWhite_15,
                        )),
                  ],
                ),
              )
            ])));
  }
}
