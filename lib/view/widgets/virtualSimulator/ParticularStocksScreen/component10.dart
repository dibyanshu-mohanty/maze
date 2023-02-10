import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

class Component10 extends StatelessWidget {
  const Component10({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      child: Row(
        children: [
          Spacer(),
          Text(
            "10 week High",
            style: AppFont.lightColorWhite_12,
          ),
        ],
      ),
    );
  }
}
