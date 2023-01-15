import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:maze/theme/app_colors.dart';
import 'appscreenbackgroundshape.dart';

class AppScreenBackground extends StatelessWidget {
  const AppScreenBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.colorBlack,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment :  MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              BackgroundShape(color: AppColors.colorGolden,),
              Align(
                  alignment: Alignment.centerRight,
                  child: BackgroundShape(color: AppColors.colorOrange,isSecond: true,)),
              BackgroundShape(color: AppColors.colorLightBlue1),
            ]
          ),
          BackdropFilter(filter: ImageFilter.blur(sigmaX: 40.0,sigmaY: 40.0),child: Container(decoration: BoxDecoration(color: AppColors.colorBlack.withOpacity(0.5)),),),
        ],
      ),
    );
  }
}
