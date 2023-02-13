import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

class TwoRowComponent extends StatelessWidget {
  final firstVal;
  final secondVal;
  final weight;
  const TwoRowComponent(
      {super.key, this.firstVal, this.secondVal, this.weight});

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
              style: AppFont.regularColorWhite_10,
            ),
            Text(
              firstVal,
              style: AppFont.lightColorWhite_10,
            ),
          ],
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Today's High",
              style: AppFont.regularColorWhite_10,
            ),
            Text(
              secondVal,
              style: AppFont.lightColorWhite_10,
            ),
          ],
        ),
      ),
    );
  }
}
