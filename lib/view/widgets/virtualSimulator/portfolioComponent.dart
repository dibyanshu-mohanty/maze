import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:maze/theme/app_sizers.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../theme/app_font.dart';
import '../../../theme/app_images.dart';
import 'demoCryptoComponent.dart';

class VSSComponent1 extends StatelessWidget {
  final double totalReturns;
  final double investedAmount;
  final double currentValue;
  final double balance;
  const VSSComponent1({super.key,required this.investedAmount, required this.currentValue, required this.totalReturns,required this.balance});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 2.h),
      width: 82.w,
      height: 22.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.colorLightBlue3.withOpacity(0.3),
            AppColors.colorWhite.withOpacity(0.0)
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
                  style: AppFont.mediumBoldColorWhite_20,
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Total Returns",
                      style: AppFont.lightColorWhite_12,
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
                          "₹ ${totalReturns.toStringAsFixed(2)}",
                          style: AppFont.mediumBoldColorGreen2_20,
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
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 6.w),
            child: DemoCryptoComponent1(
              title: "Available",
              amount: balance,
              amountStyle: AppFont.mediumBoldColorWhite_20,
            ),
          ),
          AppSizers.height10,
          Container(
            margin: EdgeInsets.only(bottom: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DemoCryptoComponent1(
                  title: "Current Value",
                  amount: currentValue,
                  amountStyle: AppFont.mediumBoldColorWhite_20,
                ),
                SizedBox(
                  width: 5.w,
                ),
                DemoCryptoComponent1(
                  title: "Invested Amount",
                  amount: investedAmount,
                  amountStyle: AppFont.mediumBoldColorDarkRed_20,
                ),
                // Spacer(),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "${investedAmount == 0.0 ? 0.0 : ((currentValue-investedAmount)/investedAmount)*100}%",
                  style: AppFont.mediumBoldColorDarkRed_20,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
