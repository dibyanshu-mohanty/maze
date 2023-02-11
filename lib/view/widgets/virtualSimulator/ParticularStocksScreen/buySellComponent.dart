import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

class BuySellComponent15 extends StatelessWidget {
  const BuySellComponent15({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Flexible(
            child: Container(
              // width: 182,
              height: 7.h,
              decoration: const BoxDecoration(
                color: AppColors.colorRed2,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  "Sell",
                  textAlign: TextAlign.center,
                  style: AppFont.mediumGoogleWhite_16,
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              // width: 182,
              height: 7.h,
              decoration: const BoxDecoration(
                color: AppColors.colorDarkGreen,
                borderRadius: BorderRadius.only(topRight: Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  "Buy",
                  textAlign: TextAlign.center,
                  style: AppFont.mediumGoogleWhite_16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
