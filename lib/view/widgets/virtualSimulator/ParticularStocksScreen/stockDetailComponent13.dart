import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

class StockDetailComponent13 extends StatelessWidget {
  const StockDetailComponent13({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.w,
      margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //column 1
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Open",
                textAlign: TextAlign.center,
                style: AppFont.regularColorWhite_14,
              ),
              Text(
                "480.00",
                textAlign: TextAlign.center,
                style: AppFont.lightColorWhite_14,
              ),
            ],
          ),
          SizedBox(
            width: 18.w,
          ),
          //column 2
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "prev.close",
                textAlign: TextAlign.center,
                style: AppFont.regularColorWhite_14,
              ),
              Text(
                "1660.00",
                textAlign: TextAlign.center,
                style: AppFont.lightColorWhite_14,
              ),
            ],
          ),
          SizedBox(
            width: 18.w,
          ),
          //column 3
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "volume",
                textAlign: TextAlign.center,
                style: AppFont.regularColorWhite_14,
              ),
              Text(
                "18,56,700",
                textAlign: TextAlign.center,
                style: AppFont.lightColorWhite_14,
              ),
            ],
          )
        ],
      ),
    );
  }
}
