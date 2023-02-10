import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_images.dart';

class VsStartupComponent extends StatelessWidget {
  const VsStartupComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          AppColors.colorLightBlue3.withOpacity(0.2),
          AppColors.colorWhite.withOpacity(0.0)
        ], begin: Alignment.centerLeft, end: Alignment.centerRight),
        border: Border.all(color: AppColors.colorPink.withOpacity(0.3)),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 28.w,
      height: 14.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Image
          Row(
            children: [
              Container(
                width: 7.w,
                height: 3.h,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                child: Image.asset(
                  AppImages.rectangle1,
                  fit: BoxFit.cover,
                ),
              ),
              Spacer(),
              Container(
                width: 3.w,
                height: 1.h,
                // margin: EdgeInsets.symmetric(horizontal: 1.w),
                child: Image.asset(
                  AppImages.GreenUp,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // width: 3.w,
                // height: 1.h,
                // margin: EdgeInsets.symmetric(horizontal: 1.w),
                child: Text(
                  "78.6%",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xff62eb56)),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 2.w),
            child: Text(
              "Nykaa",
              style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffffffff)),
              textAlign: TextAlign.center,
              maxLines: 1,
            ),
          ),

          Row(
            children: [
              Container(
                width: 3.w,
                height: 1.h,
                margin: EdgeInsets.symmetric(horizontal: 1.w, vertical: 0.5.h),
                child: Image.asset(
                  AppImages.bars,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // width: 3.w,
                // height: 1.h,
                margin: EdgeInsets.symmetric(horizontal: 1.w, vertical: 0.5.h),
                child: Text(
                  "1456.889",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xffffffff)),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          Container(
            // width: 3.w,
            // height: 1.h,
            margin: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              "+78.6",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: Color(0xff62eb56)),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
