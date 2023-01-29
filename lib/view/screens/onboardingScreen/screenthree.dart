import 'dart:ui';
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';

import '../../utils/appscreenbackground.dart';
import '../authScreen/categoryselectscreen.dart';

class OnboardScreenThree extends StatelessWidget {
  const OnboardScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      child: Stack(
        children: [
          // const AppScreenBackground(),
          // .............................Changes done by Shubham (For Review)......................................//
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                trailing: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, categorySelect);
                  },
                  child: Text(
                    "Next",
                    style: AppFont.regularColorWhite_20,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              //.................................................................................................//
              Container(
                  height: 40.h,
                  alignment: Alignment.center,
                  child: Image.asset(AppImages.ic_onboardthree,
                      fit: BoxFit.cover)),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: Dimens.margin70, vertical: Dimens.margin70),
                child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: "Benefit from Real-Time ",
                        style: AppFont.regularColorWhite_20,
                      ),
                      TextSpan(
                        text: " A1-Powered ",
                        style: AppFont.regularColorGolden_20,
                      ),
                      TextSpan(
                        text: "Investment Insights",
                        style: AppFont.regularColorWhite_20,
                      ),
                    ])),
              ),
              SizedBox(height: Dimens.margin50)
            ],
          )
        ],
      ),
    );
  }
}
