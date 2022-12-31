import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maze/presentation/utils/appscreenbackground.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_dimens.dart';


class OnboardScreenOne extends StatelessWidget {
  const OnboardScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      child: Stack(
        children: [
            AppScreenBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 400,
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/onboardScreen/ic_onboardscreen_one.png",fit: BoxFit.cover)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Dimens.margin80,vertical: Dimens.margin70),
                  child: RichText(
                    textAlign: TextAlign.center,
                      text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Invest Your Money In Stocks And",
                        style: AppFont.regularColorWhite_20,
                      ),
                      TextSpan(
                        text:" Grow Your Money",
                        style: AppFont.regularColorGolden_20,
                      )
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
