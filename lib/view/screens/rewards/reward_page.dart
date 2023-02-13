import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/widgets/rewardScreen/bonusCard.dart';
import 'package:maze/view/widgets/rewardScreen/productCard.dart';

import '../../utils/appscreenbackground.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 100.h,
      width: 100.w,
      child: Stack(children: [
        const AppScreenBackground(),
        ListView(
          children: [
            Container(
              width: 80.w,
              height: 2.5.h,
              margin: EdgeInsets.only(left: 4.4.w, top: 5.h),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(
                    width: 36.w,
                  ),
                  Text(
                    "Reward",
                    textAlign: TextAlign.center,
                    style: AppFont.mediumBoldColorWhite_13,
                  ),
                ],
              ),
            ),
            //Component 1
            Container(
              //decoration: BoxDecoration(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xff292c33)),
                color: Color(0xff292c33),
              ),
              margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.4.w),
              //width: 91.1.w,
              //height: 8.75.h,
              child: ListTile(
                leading: Container(
                  margin: EdgeInsets.symmetric(vertical: 1.h),
                  child: const CircleAvatar(
                      backgroundImage: AssetImage(AppImages.avatar),
                      backgroundColor: Colors.white,
                      radius: 20.0),
                ),
                title: Text("Ayush Bachan", style: AppFont.boldColorWhite_15),
                trailing: Container(
                  width: 25.w,
                  child: Row(
                    children: [
                      CircleAvatar(
                          backgroundImage: AssetImage(AppImages.avatar),
                          backgroundColor: Colors.white,
                          radius: 10.0),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        "567",
                        style: AppFont.regularColorWhite_15,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.2.w),
              width: 91.1.w,
              height: 16.75.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xffFF5F6D)),
                color: Color.fromRGBO(255, 95, 109, 0.3),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(6.w, 2.h, 0, 0),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Earn Upto',
                                style: AppFont.boldColorWhite_15,
                              ),
                              TextSpan(
                                text: ' 100 Coin',
                                style: AppFont.boldColorGolden_15,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 6.w),
                          child: Text(
                            "Refer A Friend And Earn",
                            style: AppFont.regularColorWhite_12,
                          )),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 6.w),
                          child: Text("Coin Upto 100.",
                              style: AppFont.regularColorWhite_12)),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(left: 6.w, bottom: 1.5.h),
                        height: 3.h,
                        width: 33.w,
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(255, 95, 109, 1)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                          ),
                          onPressed: () => {},
                          child: Text(
                            "Send Refer",
                            style: AppFont.mediumBoldColorWhite_14,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.4.w, vertical: 1.h),
                    child: Image.asset(
                      AppImages.present,
                    ),
                    height: 12.h,
                    width: 28.w,
                    // margin: const EdgeInsets.fromLTRB(47, 16, 20, 0),
                    // height: 101,
                    // width: 98,
                    // child: Image.asset(
                    //   AppImages.present,
                    // ),
                  )
                  //Image Container()
                ],
              ),
            ),
            //Component 3
            Container(
                margin: EdgeInsets.fromLTRB(17, 21, 0, 0),
                child: Text(
                  "Bonus Reward",
                  style: AppFont.mediumBoldColorGrey6_15,
                )),
            Row(
              children: const [
                BonusCard(
                  borderColor: 0xffFFB5F6,
                  backgroundColor: 0xffFFB5F8,
                  image: AppImages.gift_one,
                  buttonColor: 0xFFFFB5F6,
                ),
                BonusCard(
                  borderColor: 0xff4DF1C1,
                  backgroundColor: 0xff56EB92,
                  image: AppImages.gift_two,
                  buttonColor: 0xFF4DF1C1,
                ),
                BonusCard(
                  borderColor: 0xffFFc371,
                  backgroundColor: 0xffEF8C1D,
                  image: AppImages.gift_three,
                  buttonColor: 0xFFFfc371,
                )
              ],
            ),

            ///
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.4.w),
              width: 80.w,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Company
                      for (int i = 0; i < 5; i++) ...[
                        //............................Component2..........................//
                        BonusCard(
                          borderColor: 0xffffb2f6,
                          backgroundColor: 0xffFFB2F8,
                          image: AppImages.gift_one,
                          buttonColor: 0xFFFFB2F8,
                          buttonBorderColor: 0xffb5f6,
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),

            ///
            SizedBox(
              height: 1.5.h,
            ),
            for (int i = 0; i < 5; i++) ...[
              ProductCard(
                image: AppImages.mamaearth,
                titleText: "Mamaearth",
                subtitleText: "Flat 200 Off*",
                description: "Beauty And Wellness",
              ),
              SizedBox(
                height: 1.5.h,
              ),
            ],
          ],
        )
      ]),
    ));
  }
}
