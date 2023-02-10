import 'package:flutter/material.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_images.dart';

class ShareStockComponentPortfolioScreen extends StatelessWidget {
  const ShareStockComponentPortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w),
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
        leading: Image.asset(
          AppImages.ic_MazeLogo,
          fit: BoxFit.fill,
          width: 9.w,
          height: 4.h,
        ),
        title: Text("Applo Pharmacy", style: AppFont.regularGoogleWhite),
        subtitle: Text(
          "Applo Group",
          style: AppFont.regularGoogleWhite_10,
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
                    Image.asset(
                      AppImages.bars,
                      fit: BoxFit.cover,
                      width: 10,
                      height: 10,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "2,346",
                      style: AppFont.mediumGoogleWhite,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      AppImages.GreenUp,
                      fit: BoxFit.fill,
                      width: 11,
                      height: 11,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      "23.66%",
                      style: AppFont.regularGoogleGreen,
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
