import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

class HighLowComponent extends StatelessWidget {
  final double high;
  final double low;
  const HighLowComponent(
      {super.key, required this.high, required this.low});

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
              style: AppFont.lightColorWhite_12,
            ),
            Text(
              high.toStringAsFixed(1),
              style: AppFont.regularColorWhite_14,
            ),
          ],
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "Today's High",
              style: AppFont.lightColorWhite_12,
            ),
            Text(
              low.toStringAsFixed(1),
              style: AppFont.regularColorWhite_14,
            ),
          ],
        ),
      ),
    );
  }
}
