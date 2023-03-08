import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/screens/virtualSimulator/vsAppScreenBackground.dart';
import 'package:maze/view/widgets/rewardScreen/bonusCard.dart';
import 'package:maze/view/widgets/rewardScreen/productCard.dart';

import '../../utils/appscreenbackground.dart';

class LeaderBoardScreen extends StatelessWidget {
  const LeaderBoardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          child: Stack(children: [
            const VsAppScreenBackground(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                    child: Text("Coming Soon",style: AppFont.boldColorWhite_20,),
                  ),
                )
              ],
            )
          ]),
        ));
  }
}
