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
        margin: EdgeInsets.only(left: 13),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(53),
            border: Border.all(color: AppColors.colorGreen, width: 4)),
        width: 15.w,
        height: 7.h,
        child: Image.asset(
          AppImages.ic_MazeLogo,
          fit: BoxFit.fill,
        ),
      ),
      title: Text(
        "Adtiya Birla Cap",
        style: AppFont.regularGoogleWhite,
      ),
      subtitle: Row(
        children: [
          Container(
            width: 5.w,
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
            style: AppFont.mediumGoogleWhite,
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
            style: AppFont.regularGoogleGreen,
          ),
        ],
      ),
      trailing: Container(
        width: 16.w,
        child: Row(
          children: [
            const Icon(
              Icons.favorite_border_outlined,
              color: AppColors.colorGolden,
            ),
            SizedBox(
              width: 2.w,
            ),
            const Icon(
              Icons.share,
              color: AppColors.colorGolden,
            ),
          ],
        ),
      ),
    );
  }
}
