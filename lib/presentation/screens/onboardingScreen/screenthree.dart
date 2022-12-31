import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_dimens.dart';


class OnboardScreenThree extends StatelessWidget {
  const OnboardScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      child: Stack(
        children: [
          Container(
            height: 100.h,
            width: 100.w,
            child: Image.asset("assets/images/Rectangle 22.png",fit: BoxFit.fill,),
          ),
          Container(
            height: 100.h,
            width: 100.w,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY:200),
              child: Container(
                color: Colors.black.withOpacity(0.1),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 400,
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/onboardScreen/ic_onboardscreen_three.png",fit: BoxFit.cover)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Dimens.margin70,vertical: Dimens.margin70),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Benefit from Real-Time ",
                            style: AppFont.regularColorWhite_20,
                          ),
                          TextSpan(
                            text:" A1-Powered ",
                            style: AppFont.regularColorGolden_20,
                          ),
                          TextSpan(
                            text: "Investment Insights",
                            style: AppFont.regularColorWhite_20,
                          ),
                        ]
                    )),
              ),
              SizedBox(height: Dimens.margin50)
            ],
          )
        ],
      ),
    );
  }
}
