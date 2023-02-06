import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_font.dart';
import '../../../theme/app_images.dart';

class ScrollVSComponent2 extends StatelessWidget {
  final companyName;
  final percentageLossGain;
  final amount;
  const ScrollVSComponent2(
      {super.key,
      this.companyName = "Adtiya Birla Cap",
      this.percentageLossGain = "5.98%",
      this.amount = "1200.0"});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
      width: 23.w,
      height: 12.5.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Image
          Container(
            width: 4.5.w,
            height: 2.h,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                5.0,
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
            child: Image.asset(
              AppImages.rectangle1,
              fit: BoxFit.cover,
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 0.3.w),
            child: Text(
              companyName,
              style: GoogleFonts.poppins(
                  fontSize: 10,
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
                  amount,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Color(0xffffffff)),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          Row(
            children: [
              Container(
                width: 3.w,
                height: 1.h,
                margin: EdgeInsets.symmetric(horizontal: 1.w),
                child: Image.asset(
                  AppImages.GreenUp,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // width: 3.w,
                // height: 1.h,
                margin: EdgeInsets.symmetric(horizontal: 1.w),
                child: Text(
                  percentageLossGain,
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                      color: Color(0xffffffff)),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
