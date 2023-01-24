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
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xff292c33),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Business',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'School',
              ),
            ]),
        body: SafeArea(
            child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(left: 9, top: 44),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 20,
                  ),
                  SizedBox(
                    width: 118.0,
                  ),
                  Text(
                    "Reward",
                    textAlign: TextAlign.center,
                    style: AppFont.mediumBoldColorWhite_13,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 19, 19, 0),
              width: 328,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff292C33)),
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.fromLTRB(8, 14, 0, 14),
                      child: CircleAvatar(
                          backgroundImage: AssetImage(AppImages.avatar),
                          backgroundColor: Colors.white,
                          radius: 21.0)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(23, 25, 0, 25),
                        child: Text("Ayush Bachan",
                            style: AppFont.boldColorWhite_15),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16, 19, 19, 0),
              width: 328,
              height: 134,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xffFF5F6D)),
                  color: Color.fromRGBO(255, 95, 109, 0.3)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(24, 20, 0, 0),
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
                          margin: EdgeInsets.fromLTRB(24, 0, 0, 0),
                          child: Text(
                            "Refer A Friend And Earn",
                            style: AppFont.regularColorWhite_12,
                          )),
                      Container(
                          margin: EdgeInsets.fromLTRB(24, 0, 0, 0),
                          child: Text("Coin Upto 100.",
                              style: AppFont.regularColorWhite_12)),
                      Container(
                        margin: EdgeInsets.fromLTRB(24, 13, 0, 0),
                        height: 32,
                        width: 129,
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromRGBO(255, 95, 109, 1)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ))),
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
                  Container(
                    margin: EdgeInsets.fromLTRB(47, 16, 20, 0),
                    child: Image.asset(
                      AppImages.present,
                    ),
                    height: 101,
                    width: 98,
                  )
                  //Image Container()
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(17, 21, 0, 0),
                child: Text(
                  "Bonus Reward",
                  style: AppFont.mediumBoldColorGrey6_15,
                )),
            Row(
              children: [
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
        )));
  }
}
