import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:maze/theme/app_font.dart';
import 'package:maze/theme/app_images.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_sizers.dart';

class ProductStockComponent extends StatelessWidget {
  final String stockName;
  final double currentPrice;
  const ProductStockComponent({super.key,this.stockName ="", this.currentPrice = 0.0});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        margin: EdgeInsets.symmetric(horizontal: 2.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(53),
            border: Border.all(color: AppColors.colorGreen, width: 4)),
        width: 13.w,
        height: 10.h,
        child: Image.asset(
          AppImages.ic_MazeLogo,
          fit: BoxFit.fill,
        ),
      ),
      title: Text(
        stockName,
        style: AppFont.regularColorWhite_16,
      ),
      subtitle: Row(
        children: [
          Icon(CupertinoIcons.chart_bar_fill,color: AppColors.colorGolden,size: 3.w,),
          AppSizers.width5,
          Text(
            currentPrice.toStringAsFixed(1),
            textAlign: TextAlign.center,
            style: AppFont.mediumBoldColorWhite_15,
          ),
          AppSizers.width10,
          Icon(Icons.arrow_drop_up_sharp,color: AppColors.colorLightGreen,size: 5.w,),
          Text(
            "5.98%",
            textAlign: TextAlign.center,
            style: AppFont.mediumBoldColorWhite_15,
          ),
        ],
      ),
      trailing: SizedBox(
        width: 16.w,
        child: Row(
          children: [
            Icon(
              Icons.favorite_border_outlined,
              color: AppColors.colorGolden,
              size: 5.w,
            ),
            SizedBox(
              width: 2.w,
            ),
            Icon(
              Icons.share,
              color: AppColors.colorGolden,
              size: 5.w,
            ),
          ],
        ),
      ),
    );
  }
}
