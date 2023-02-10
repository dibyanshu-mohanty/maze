import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

class Component11 extends StatelessWidget {
  const Component11({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      child: Row(
        children: [
          Spacer(),
          Text(
            "1560.87",
            style: AppFont.lightColorWhite_12,
          ),
        ],
      ),
    );
  }
}
