import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

class GraphUpperRowComponent3 extends StatelessWidget {
  const GraphUpperRowComponent3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 3.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "NSE",
            style: AppFont.mediumBoldColorWhite_12,
          ),
          Container(
            width: 10.w,
            height: 2.7.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  AppColors.colorLightBlue3.withOpacity(0.2),
                  AppColors.colorWhite.withOpacity(0.1)
                ],
              ),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: AppColors.colorPink.withOpacity(0.3),
              ),
            ),
            // ignore: sort_child_properties_last
            child: Text(
              "1D",
              textAlign: TextAlign.center,
              style: AppFont.mediumBoldColorWhite_12,
            ),
          ),
          Text(
            "1W",
            style: AppFont.mediumBoldColorWhite_12,
          ),
          Text(
            "1M",
            style: AppFont.mediumBoldColorWhite_12,
          ),
          Text(
            "1Y",
            style: AppFont.mediumBoldColorWhite_12,
          ),
          Text(
            "3Y",
            style: AppFont.mediumBoldColorWhite_12,
          ),
        ],
      ),
    );
  }
}
