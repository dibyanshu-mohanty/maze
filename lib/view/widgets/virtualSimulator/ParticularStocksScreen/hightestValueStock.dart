import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

class HighestValueStock extends StatelessWidget {
  const HighestValueStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
      child: ListTile(
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "10 week High",
              style: AppFont.regularColorWhite_10,
            ),
            Text(
              "1560.87",
              style: AppFont.lightColorWhite_10,
            ),
          ],
        ),
      ),
    );
  }
}
