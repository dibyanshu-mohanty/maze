// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_images.dart';

class VSComponent3 extends StatelessWidget {
  const VSComponent3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      height: 7.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          AppColors.colorLightBlue3.withOpacity(0.2),
          AppColors.colorWhite.withOpacity(0.0)
        ], begin: Alignment.centerLeft, end: Alignment.centerRight),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: AppColors.colorPink.withOpacity(0.5)),
      ),
      child: Row(
        children: [
          Container(
            width: 6.w,
            height: 3.h,
            margin: EdgeInsets.only(left: 4.w),
            // ignore: prefer_const_constructors

            child: Image.asset(
              AppImages.bus,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 6.w,
          ),
          Text(
            "Automobile",
            style: AppFont.mediumGoogleWhite,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
