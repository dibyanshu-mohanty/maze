import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_font.dart';
import '../../../../theme/app_images.dart';
import 'demoCryptoComponent.dart';

class VSSComponent1 extends StatelessWidget {
  const VSSComponent1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      width: 80.w,
      height: 14.3.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        border: Border.all(color: Colors.blue),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
            child: Row(
              children: [
                Text(
                  "Demo Crypto",
                  style: AppFont.regularColorWhite_15,
                ),
                Spacer(),
                Text(
                  "0.0%",
                  style: AppFont.mediumBoldColorRed,
                )
              ],
            ),
          ),
          // SizedBox(
          //   height: 2.h,
          // ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 3.h,
                  width: 10.w,
                  alignment: Alignment.center,
                  child: Image.asset(AppImages.Coins2, fit: BoxFit.cover),
                ),
                const DemoCryptoComponent1(
                  title: "Portfolio Value",
                  amount: "1,00,000",
                ),
                // SizedBox(
                //   width: 1.w,
                // ),
                const DemoCryptoComponent1(
                  title: "Invested Amount",
                  amount: "0",
                ),
                // SizedBox(
                //   width: 1.w,
                // ),
                const DemoCryptoComponent1(
                  title: "Cash Balance",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
