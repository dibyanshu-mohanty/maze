import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:maze/presentation/utils/appscreenbackground.dart';
import 'package:maze/theme/coreimport.dart';


class OnboardScreenTwo extends StatelessWidget {
  const OnboardScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      child: Stack(
        children: [
          AppScreenBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 50.h,
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/onboardScreen/ic_onboardscreen_two.png",fit: BoxFit.cover)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Dimens.margin80,vertical: Dimens.margin70),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Track your Portfolio, Receive Daily",
                            style: AppFont.regularColorWhite_20,
                          ),
                          TextSpan(
                            text:" Smart Money Alerts",
                            style: AppFont.regularColorGolden_20,
                          )
                        ]
                    )),
              ),
              SizedBox(height: Dimens.margin50)
            ],
          )
        ],
      ),
    );
  }
}
