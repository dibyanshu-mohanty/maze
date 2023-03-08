import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_images.dart';

class ShareStockComponentPortfolioScreen extends StatelessWidget {
  final String imageName;
  final String stockName;
  final String tickerName;
  final double currentPrice;
  final double percentageLossGain;
  const ShareStockComponentPortfolioScreen({super.key,this.imageName="",this.stockName="",this.currentPrice=0.0,this.percentageLossGain=0.0, this.tickerName = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w,vertical: 0.5.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.colorPink.withOpacity(0.6)),
        gradient: LinearGradient(
          colors: [
            AppColors.colorLightBlue3.withOpacity(0.1),
            AppColors.colorWhite.withOpacity(0.0),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: ListTile(
        leading: imageName.isEmpty
        ? Image.asset(
          AppImages.ic_MazeLogo,
          fit: BoxFit.fill,
          width: 9.w,
          height: 4.h,
        )
        : Image.network(imageName),
        title: Text(stockName, style: AppFont.regularColorWhite_13),
        subtitle: Text(
          tickerName,
          style: AppFont.regularColorWhite_10,
        ),
        trailing: Transform.translate(
          offset: Offset(4.w, 0),
          child: Container(
            width: 18.w,
            height: 11.h,
            margin: EdgeInsets.symmetric(vertical: 0.5.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(CupertinoIcons.chart_bar_fill,color: AppColors.colorGolden,size: 3.w,),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      currentPrice.toStringAsFixed(2),
                      style: AppFont.mediumBoldColorWhite_13,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.arrow_drop_up_sharp,color: AppColors.colorLightGreen,size: 5.w,),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "23.66%",
                      style: AppFont.regularColorWhite_13,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
