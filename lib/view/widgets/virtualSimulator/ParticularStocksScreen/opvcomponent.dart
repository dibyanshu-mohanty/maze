import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

class OpenCloseVolumeComponent extends StatelessWidget {
  final double open;
  final double close;
  final int volume;
  const OpenCloseVolumeComponent({super.key,
  required this.open,
  required this.close,
  required this.volume});

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
                open.toStringAsFixed(2),
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
                "Close",
                textAlign: TextAlign.center,
                style: AppFont.regularColorWhite_14,
              ),
              Text(
                close.toStringAsFixed(2),
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
                "Volume",
                textAlign: TextAlign.center,
                style: AppFont.regularColorWhite_14,
              ),
              Text(
                "$volume",
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
