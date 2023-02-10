import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

class Component7 extends StatelessWidget {
  final firstVal;
  final secondVal;
  final weight;
  const Component7({super.key, this.firstVal, this.secondVal, this.weight});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      child: ListTile(
        leading: Text(
          firstVal,
          style: AppFont.regularGoogleWhite_10,
        ),
        trailing: Text(
          secondVal,
          style: AppFont.regularGoogleWhite_10,
        ),
      ),
    );
  }
}
