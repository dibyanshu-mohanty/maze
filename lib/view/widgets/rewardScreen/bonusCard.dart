import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:flutter/material.dart';

class BonusCard extends StatelessWidget {
  final image;
  final buttonColor;
  final borderColor;
  final backgroundColor;
  final buttonBorderColor;
  const BonusCard(
      {super.key,
      this.image = AppImages.gift_one,
      this.buttonColor = 0xFFFFB5F6,
      this.backgroundColor = 0x91FFB5F8,
      this.borderColor = 0xffFFB5F6,
      this.buttonBorderColor = 0xffffb5f6});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28.w,
      height: 18.625.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(borderColor), width: 2),
          color: Color(backgroundColor)),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: .5.h),
            height: 8.h,
            width: 19.w,
            child: Image(
              image: AssetImage(image),
            ),
          ),
          Text("Bonus", style: AppFont.mediumBoldColorWhite_11),
          Text("Achieved", style: AppFont.mediumBoldColorWhite_11),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(buttonBorderColor)),
            ),
            height: 4.h,
            width: 28.w,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(buttonColor)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              onPressed: () => {},
              child: Text(
                "Claim Reward",
                style: AppFont.mediumBoldColorWhite_12,
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
