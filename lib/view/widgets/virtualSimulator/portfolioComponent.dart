import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_font.dart';
import '../../../theme/app_images.dart';
import 'demoCryptoComponent.dart';

class VSSComponent1 extends StatelessWidget {
  const VSSComponent1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
      width: 82.w,
      height: 16.8.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.colorLightBlue3.withOpacity(0.1),
            AppColors.colorWhite.withOpacity(0.0),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.colorPink.withOpacity(0.4)),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
            child: Row(
              children: [
                Text(
                  "Portfolio",
                  style: AppFont.mediumBoldColorWhite_15,
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Total Returns",
                      style: AppFont.lightColorgrey_10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 1.5.h,
                          width: 7.w,
                          margin: EdgeInsets.symmetric(horizontal: 1.w),
                          // alignment: Alignment.center,
                          child: Image.asset(AppImages.ic_MazeLogo,
                              fit: BoxFit.cover),
                        ),
                        Text(
                          "₹ 1,00,000",
                          style: AppFont.mediumBoldColorGreen_15,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const DemoCryptoComponent1(
                  title: "Current Value",
                  amount: "1,00,000",
                  amountColor: 0xffffffff,
                ),
                SizedBox(
                  width: 5.w,
                ),
                const DemoCryptoComponent1(
                  title: "Invested Amount",
                  amount: "0",
                  amountColor: 0xffFF2F2F,
                ),
                // Spacer(),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "0.0%",
                  style: GoogleFonts.roboto(
                      fontSize: 17.25,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffFF2F2F)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
