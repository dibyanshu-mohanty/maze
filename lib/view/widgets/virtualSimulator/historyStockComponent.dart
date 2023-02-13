import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/coreimport.dart';

import '../../../theme/app_images.dart';

class HistoryStock extends StatelessWidget {
  const HistoryStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        border: Border.all(
          color: AppColors.colorPink.withOpacity(0.5),
          width: 1,
        ),
        gradient: LinearGradient(colors: [
          AppColors.colorLightBlue3.withOpacity(0.12),
          AppColors.colorWhite.withOpacity(0.0),
        ]),
      ),
      child: ListTile(
        leading: Container(
          margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.5.h),
          child: Image.asset(
            AppImages.ic_Justdial,
            fit: BoxFit.contain,
            width: 15.w,
            height: 5.h,
          ),
        ),
        title: Container(
          margin: EdgeInsets.symmetric(vertical: 1.h),
          child: Text(
            "Justdial",
            style: AppFont.mediumBoldColorWhite_18,
          ),
        ),
        subtitle: Container(
          margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 0.7.w),
          child: Text(
            "₹ 675.10",
            style: AppFont.semiBoldColorWhite_15,
          ),
        ),
        trailing: Transform.translate(
          offset: Offset(5.w, 0),
          child: Container(
            height: 10.h,
            child: Column(
              children: [
                Container(
                  width: 25.w,
                  // margin: EdgeInsets.symmetric(horizontal: 1.w),
                  child: Row(
                    children: [
                      Text(
                        "p%",
                        style: AppFont.regularColorWhite_9,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Image.asset(
                        AppImages.GreenUp,
                        fit: BoxFit.fill,
                        width: 5.w,
                        height: 1.5.h,
                      ),
                      Text(
                        "5.98%",
                        style: AppFont.regularColorGre,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: 25.w,
                  // margin: EdgeInsets.only(top: 0.5.h),
                  child: Row(
                    children: [
                      Text(
                        "cp",
                        style: AppFont.lightColorWhite_12,
                      ),
                      // Image.asset(
                      //   AppImages.GreenUp,
                      //   fit: BoxFit.contain,
                      //   width: 8.w,
                      //   height: 1.h,
                      // ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        "₹ 37.45",
                        style: AppFont.mediumBoldColorWhite_13,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
