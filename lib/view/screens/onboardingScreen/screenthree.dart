import 'dart:ui';
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/coreimport.dart';

import '../../../routes.dart';
import '../../utils/appscreenbackground.dart';
import '../authScreen/categoryselectscreen.dart';

class OnboardScreenThree extends StatelessWidget {
  const OnboardScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Stack(
        children: [
          const AppScreenBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 50.h,
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
              const SizedBox(height: Dimens.margin20),
              GestureDetector(
                onTap: () { Navigator.pushNamed(context, categorySelect); },
                child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: Dimens.margin50, vertical: Dimens.margin20),
                    alignment: Alignment.bottomRight,
                    child: Text("Done",style: AppFont.mediumBoldColorWhite_18,)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
