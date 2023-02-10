import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

class Component6 extends StatelessWidget {
  const Component6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.5.h),
      child: Text(
        "Performance",
        textAlign: TextAlign.center,
        style: AppFont.regularColorWhite_15,
      ),
    );
  }
}
