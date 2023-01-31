import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_dimens.dart';
import '../../../theme/app_font.dart';
import '../../../theme/app_images.dart';

class SplashScreenOne extends StatelessWidget {
  const SplashScreenOne({super.key});

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
              child: Image.asset(AppImages.ai1, fit: BoxFit.cover)),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: Dimens.margin16),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: "Increase strength of your mind by\n",
                    style: AppFont.regularColorWhite_20,
                  ),
                  TextSpan(
                    text: "playing different games",
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
