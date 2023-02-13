import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:maze/theme/app_font.dart';
import 'package:maze/theme/app_images.dart';
import 'package:sizer/sizer.dart';

class ProductStockComponent extends StatelessWidget {
  const ProductStockComponent({super.key});

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
        "Adtiya Birla Cap",
        style: AppFont.regularColorWhite_10,
      ),
      subtitle: Row(
        children: [
          Container(
            width: 2.5.w,
            height: 1.h,
            margin: EdgeInsets.symmetric(horizontal: 1.w),
            child: Image.asset(
              AppImages.bars,
              fit: BoxFit.fill,
            ),
          ),
          Text(
            "1200.0",
            textAlign: TextAlign.center,
            style: AppFont.mediumBoldColorWhite_10,
          ),
          Container(
            width: 4.w,
            height: 1.h,
            child: Image.asset(
              AppImages.GreenUp,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 1.w,
          ),
          Text(
            "5.98%",
            textAlign: TextAlign.center,
            style: AppFont.regularColorWhite_10,
          ),
        ],
      ),
      trailing: Container(
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
