import "package:flutter/material.dart";
import 'dart:ui';
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';

import '../../utils/appscreenbackground.dart';

class ReferPage extends StatelessWidget {
  const ReferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        child: Stack(
          children: [
            const AppScreenBackground(),
            Container(
              margin: const EdgeInsets.only(left: 16, top: 48),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 20,
                  ),
                  const SizedBox(
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
              margin: const EdgeInsets.fromLTRB(28, 130, 0, 0),
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(text: 'Earn Upto ', style: AppFont.boldColorWhite_20),
                TextSpan(text: '100 Coin', style: AppFont.boldColorGolden_20)
              ])),
            ),
            Container(
                height: 42,
                width: 166,
                margin: const EdgeInsets.fromLTRB(28, 162, 0, 0),
                child: Text(
                  "Refer a friend and earn coin upto 100.",
                  style: AppFont.regularColorWhite_16,
                )),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 230, 0, 0),
              height: 42,
              width: 195,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(255, 95, 109, 1)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(200.0),
                    ))),
                onPressed: () => {},
                child: Row(
                  children: [
                    Text(
                      "Code:",
                      style: AppFont.mediumBoldColorWhite_14,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      width: 85,
                      height: 18,
                      child: TextField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.number,
                        style: AppFont.boldColorWhite_15,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(224, 232, 73.47, 0),
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(15 / 360),
                child: Image.asset(
                  height: 60,
                  width: 60.98,
                  AppImages.group,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(260, 285, 0, 0),
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(8 / 360),
                child: Image.asset(
                  height: 25,
                  width: 25,
                  AppImages.cursor,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 26,
              width: 50,
              margin: const EdgeInsets.fromLTRB(289, 286, 0, 0),
              child:
                  Text("Click here to copy", style: AppFont.lightColorWhite_10),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(28, 343, 0, 0),
              height: 42,
              width: 235,
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Get reward every time your friend login with your ',
                    style: AppFont.regularColorWhite_14),
                TextSpan(text: 'code', style: AppFont.regularColorGolden)
              ])),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(15, 393, 0, 0),
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(2 / 360),
                child: Image.asset(
                  height: 800,
                  width: 350,
                  AppImages.frame,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
