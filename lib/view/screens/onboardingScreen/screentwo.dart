import 'dart:ui';
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';

import '../../utils/appscreenbackground.dart';

class OnboardScreenTwo extends StatelessWidget {
  const OnboardScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      child: Stack(
        children: [
          // const AppScreenBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 50.h,
                  alignment: Alignment.center,
                  child:
                      Image.asset(AppImages.ic_onboardtwo, fit: BoxFit.cover)),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: Dimens.margin80, vertical: Dimens.margin70),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Track your Portfolio, Receive Daily",
                        style: AppFont.regularColorWhite_20,
                      ),
                      TextSpan(
                        text: " Smart Money Alerts",
                        style: AppFont.regularColorGolden_20,
                      )
                    ])),
              ),
              const SizedBox(height: Dimens.margin50)
            ],
          )
        ],
      ),
    );
  }
}
