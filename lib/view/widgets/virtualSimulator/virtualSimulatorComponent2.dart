import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_font.dart';
import '../../../theme/app_images.dart';
import '../../../theme/app_sizers.dart';

class ScrollVSComponent2 extends StatelessWidget {
  final String companyName;
  final String ticker;
  final String percentageLossGain;
  final String amount;
  final String tourneyId;
  const ScrollVSComponent2(
      {super.key,
      this.companyName = "Adtiya Birla Cap",
      this.percentageLossGain = "5.98%",
        this.ticker ="",
      this.amount = "1200.0",
        this.tourneyId = ""
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, vsStockDetailScreen,arguments: [ticker,tourneyId]);
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.colorLightBlue3.withOpacity(0.1),
            AppColors.colorWhite.withOpacity(0.0)
          ], begin: Alignment.centerLeft, end: Alignment.centerRight),
          border: Border.all(color: AppColors.colorPink.withOpacity(0.6)),
          borderRadius: BorderRadius.circular(10),
        ),
        width: 25.w,
        margin: EdgeInsets.only(left: 3.w),
        padding: EdgeInsets.all(2.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 4.5.w,
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5.0,
                ),
              ),
              margin: EdgeInsets.symmetric(vertical: 1.h),
              child: Image.asset(
                AppImages.rectangle1,
                fit: BoxFit.cover,
              ),
            ),
           Text(
                companyName,
                style: AppFont.regularColorWhite_10,
                maxLines: 1,
              ),

            Row(
              children: [
                Icon(CupertinoIcons.chart_bar_fill,color: AppColors.colorGolden,size: 3.w,),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0.5.h,horizontal: 1.w),
                  child: Text(
                    amount,
                    style: AppFont.mediumBoldColorWhite_13,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.arrow_drop_up_sharp,color: AppColors.colorLightGreen,size: 5.w,),
                Container(
                  // width: 3.w,
                  // height: 1.h,
                  child: Text(
                    percentageLossGain,
                    style:  AppFont.mediumBoldColorWhite_10,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
