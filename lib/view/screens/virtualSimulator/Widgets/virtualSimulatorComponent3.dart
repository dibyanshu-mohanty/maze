// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_images.dart';

class VSComponent3 extends StatelessWidget {
  const VSComponent3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45.w,
      height: 7.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        border: Border.all(color: Colors.blue),
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
            style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xffffffff)),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
