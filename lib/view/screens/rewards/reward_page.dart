import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/widgets/rewardScreen/bonusCard.dart';
import 'package:maze/view/widgets/rewardScreen/productCard.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        leading: Container(
          margin: EdgeInsets.only(top: 5.h, left: 5.w),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 24,
          ),
        ),
        title: Container(
          margin: EdgeInsets.only(top: 5.h),
          child: Text(
            "Reward",
            style: AppFont.regularColorWhite_15,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: Color(0xff292c33),
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home_outlined,
      //           color: Colors.white,
      //         ),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.business),
      //         label: 'Business',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.school),
      //         label: 'School',
      //       ),
      //     ]),
      body: SafeArea(
        child: ListView(
          children: [
            //Component 1
            ListTile(
              leading: const CircleAvatar(
                  backgroundImage: AssetImage(AppImages.avatar),
                  backgroundColor: Colors.white,
                  radius: 21.0),
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
            //Component 2
            Container(
              margin: EdgeInsets.fromLTRB(16, 19, 19, 0),
              width: 80.w,
              height: 15.h,
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
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 6.w, vertical: 1.h),
                        height: 4.h,
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
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Company
                    for (int i = 0; i < 5; i++) ...[
                      //............................Component2..........................//
                      BonusCard(
                        borderColor: 0xffFFB5F6,
                        backgroundColor: 0xffFFB2F8,
                        image: AppImages.gift_one,
                        buttonColor: 0xFFFFB2F8,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                    ],
                  ],
                ),
              ),
            ),

            // SizedBox(
            //   height: 1.h,
            // ),

            Container(
              margin: EdgeInsets.fromLTRB(16, 41, 16, 0),
              child: ProductCard(
                image: AppImages.mamaearth,
                titleText: "Mamaearth",
                subtitleText: "Flat 200 Off*",
                description: "Beauty And Wellness",
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: ProductCard(
                image: AppImages.airtel,
                titleText: "Airtel Recharge",
                subtitleText: "50 Rupees Cashback*",
                description: "Telecommunication",
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: ProductCard(
                image: AppImages.kfc,
                titleText: "KFC",
                subtitleText: "160 Rupees Off*",
                description: "Food",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
