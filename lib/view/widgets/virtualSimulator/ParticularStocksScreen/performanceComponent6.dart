import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

class Component6 extends StatelessWidget {
  const Component6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 3.w, top: 1.h),
        child: ListTile(
          leading: Text(
            "Performance",
            textAlign: TextAlign.center,
            style: AppFont.mediumGoogleWhite_15,
          ),
        ));
  }
}
