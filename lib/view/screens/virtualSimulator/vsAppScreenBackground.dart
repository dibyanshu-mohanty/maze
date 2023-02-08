import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:sizer/sizer.dart';

import '../../utils/appscreenbackgroundshape.dart';
// import 'Vsappscreenbackgroundshape.dart';

class VsAppScreenBackground extends StatelessWidget {
  const VsAppScreenBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.colorBlack,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [AppColors.colorPurple, AppColors.colorDarkBlue],
                    ),
                  ),
                ),
              ),

              // Align(
              //     alignment: Alignment.centerRight,
              //     child: BackgroundShape(
              //       color: AppColors.colorDarkBlue,
              //       isSecond: true,
              //     )),
              // Align(
              //   alignment: Alignment.bottomRight,
              //   child: BackgroundShape(
              //     color: AppColors.colorPurple,
              //     diameter: 250,
              //     isSecond: true,
              //   ),
              // ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [AppColors.colorPurple, AppColors.colorDarkBlue],
                    ),
                  ),
                ),
              ),
            ],
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
            child: Container(
              decoration:
                  BoxDecoration(color: AppColors.colorBlack.withOpacity(0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
