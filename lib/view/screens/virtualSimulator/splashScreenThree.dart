import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_dimens.dart';
import '../../../theme/app_font.dart';
import '../../../theme/app_images.dart';

class SplashScreenThree extends StatelessWidget {
  const SplashScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: 50.h,
              alignment: Alignment.center,
              child: Image.asset(AppImages.Coins1, fit: BoxFit.cover)),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: Dimens.margin16),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: "learn how to trade\n",
                    style: AppFont.regularColorWhite_20,
                  ),
                  TextSpan(
                    text: "by using virtual money",
                    style: AppFont.regularColorGolden_20,
                  )
                ])),
          ),
          //SizedBox(height: Dimens.margin50)
        ],
      ),
    );
  }
}
