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
      color: AppColors.colorPurple.withOpacity(0.4),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 40.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      radius: 1,
                      colors: [
                        AppColors.colorPurple.withOpacity(0.8),
                        AppColors.colorDarkBlue.withOpacity(0.1)
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 40.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      radius: 1,
                      colors: [
                        AppColors.colorPurple.withOpacity(0.6),
                        AppColors.colorDarkBlue.withOpacity(0.1)
                      ],
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
