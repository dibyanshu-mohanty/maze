import 'dart:ui';
import 'package:maze/presentation/utils/appscreenbackground.dart';
import 'package:maze/theme/coreimport.dart';


class OnboardScreenThree extends StatelessWidget {
  const OnboardScreenThree({Key? key}) : super(key: key);

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
                  child: Image.asset("assets/images/onboardScreen/ic_onboardscreen_three.png",fit: BoxFit.cover)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Dimens.margin70,vertical: Dimens.margin70),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Benefit from Real-Time ",
                            style: AppFont.regularColorWhite_20,
                          ),
                          TextSpan(
                            text:" A1-Powered ",
                            style: AppFont.regularColorGolden_20,
                          ),
                          TextSpan(
                            text: "Investment Insights",
                            style: AppFont.regularColorWhite_20,
                          ),
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
