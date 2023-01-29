import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/theme/app_images.dart';
import 'package:maze/theme/app_sizers.dart';
import 'package:maze/theme/coreimport.dart';

import 'introductiondetailscreen.dart';
import 'screenone.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          AppImages.ic_onboard,
          height: 100.h,
          width: 100.h,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 2.h,
          child: Container(
            margin: const EdgeInsets.symmetric(
                horizontal: Dimens.margin30, vertical: Dimens.margin15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      AppImages.ic_logomain,
                      height: 5.h,
                    ),
                    SizedBox(width: Dimens.margin20),
                    Text(
                      "Maze",
                      style: AppFont.mediumBoldColorWhite_25,
                    ),
                  ],
                ),
                AppSizers.height10,
                SizedBox(
                  width: 50.w,
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Join New Era Of Investing With ",
                        style: AppFont.mediumBoldColorWhite_27),
                    TextSpan(
                        text: "Maze", style: AppFont.mediumBoldColorGolden_27),
                  ])),
                ),
                AppSizers.height10,
                SizedBox(
                    width: 50.w,
                    child: Text(
                      "India's First Investing App For Teenagers",
                      style: AppFont.regularColorWhite_15,
                    )),
                AppSizers.height20,
                Container(
                  width: 85.w,
                  // padding: const EdgeInsets.symmetric(vertical: Dimens.margin10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19.0),
                      color: AppColors.colorGolden),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    child: ListTile(
                      title: Center(
                          child: Text(
                        "Get Started",
                        style: AppFont.boldColorBlack_20,
                        textAlign: TextAlign.center,
                      )),
                      trailing: const Icon(
                        Icons.arrow_forward,
                        color: AppColors.colorBlack,
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, introductionScreen);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
