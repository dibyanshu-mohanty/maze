import 'dart:ui';
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';

import '../../utils/appscreenbackground.dart';

class OnboardScreenOne extends StatelessWidget {
  const OnboardScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      child: Stack(
        children: [
          const AppScreenBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 50.h,
                  alignment: Alignment.center,
                  child: Image.asset(AppImages.ic_onboardone, fit: BoxFit.cover)),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: Dimens.margin80),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Invest Your Money In Stocks And",
                        style: AppFont.regularColorWhite_20,
                      ),
                      TextSpan(
                        text: " Grow Your Money",
                        style: AppFont.regularColorGolden_20,
                      )
                    ])),
              ),
              //SizedBox(height: Dimens.margin50)
            ],
          ),
        ],
      ),
    );
  }
}
