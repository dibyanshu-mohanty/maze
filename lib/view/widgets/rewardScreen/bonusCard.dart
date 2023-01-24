import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:flutter/material.dart';

class BonusCard extends StatelessWidget {
  final image;
  final buttonColor;
  final borderColor;
  final backgroundColor;
  const BonusCard(
      {super.key,
      this.image = AppImages.gift_one,
      this.buttonColor = 0xFFFFB5F6,
      this.backgroundColor = 0x91FFB5F8,
      this.borderColor = 0xffFFB5F6});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(17, 13, 0, 0),
      width: 101,
      height: 149,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(borderColor)),
          color: Color(backgroundColor)),
      child: Column(
        children: [
          Container(
              //margin: EdgeInsets.fromLTRB(17, 10, 0, 0),
              height: 66,
              width: 66,
              child: Image(image: AssetImage(image))),
          Text("Bonus", style: AppFont.mediumBoldColorWhite_11),
          Text("Achieved", style: AppFont.mediumBoldColorWhite_11),
          Spacer(),
          Container(
            margin: EdgeInsets.only(top: 9),
            height: 35,
            width: 101,
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(buttonColor)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ))),
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
