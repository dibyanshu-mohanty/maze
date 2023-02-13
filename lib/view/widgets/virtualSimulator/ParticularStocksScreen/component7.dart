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
        leading: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today's Low",
              style: AppFont.regularGoogleWhite_10,
            ),
            Text(
              firstVal,
              style: AppFont.lightGoogleWhite_10,
            ),
          ],
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Today's High",
              style: AppFont.regularGoogleWhite_10,
            ),
            Text(
              secondVal,
              style: AppFont.lightGoogleWhite_10,
            ),
          ],
        ),
      ),
    );
  }
}
