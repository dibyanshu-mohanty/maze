import 'dart:ui';
import 'package:lottie/lottie.dart';
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/screens/homeScreen/homescreen.dart';
import 'package:maze/view/utils/homeScreen/homescreenbackground.dart';

class DigitalGoldScreen extends StatelessWidget {
  const DigitalGoldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 3.w,
            child: CircleAvatar(
              radius: 25.w,
              backgroundColor: AppColors.colorGolden,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 40.0, sigmaY: 40.0),
            child: Container(
              decoration:
              BoxDecoration(color: AppColors.colorBlack.withOpacity(0.65)),
            ),
          ),
          Column(
            children: [
              AppSizers.height40,
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.only(left: Dimens.margin30),
                  alignment: Alignment.centerLeft,
                  child: const Icon(Icons.arrow_back_ios,color: AppColors.colorWhite,),
                ),
              ),
              AppSizers.height30,
              SizedBox(
                height: 25.h,
                width: 100.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: Dimens.margin30),
                      child: Text(
                        "Your gold stash",
                        style: AppFont.lightColorWhite_20,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: Dimens.margin30),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic ,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "5 Gram",
                              style: AppFont.regularColorWhite_35,
                            ),
                          ),
                          Text(
                            "Buy price: \u{20B9} 5.15/mg",
                            style: AppFont.mediumBoldColorWhite_15,
                          ),
                        ],
                      ),
                    ),
                    AppSizers.height20,
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: Dimens.margin33),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, transactDigitalGoldScreen,arguments: "Buy");
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: Dimens.margin35,
                                    vertical: Dimens.margin10),
                                decoration: BoxDecoration(
                                    color: AppColors.colorGolden,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Text(
                                  "Buy Gold",
                                  style: AppFont.mediumBoldColorBlack_15,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          AppSizers.width10,
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, transactDigitalGoldScreen,arguments: "Sell");
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: Dimens.margin35,
                                    vertical: Dimens.margin10),
                                decoration: BoxDecoration(
                                    color: AppColors.colorRed3  ,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Text(
                                  "Sell Gold",
                                  style: AppFont.mediumBoldColorWhite_15,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Lottie.asset(
                  AppImages.ic_GoldPlatesAnimation,
                  width: 70.w
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: Dimens.margin30),
                child: RichText(
                    text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Recommended ",
                      style: AppFont.mediumBoldColorGolden_14,
                    ),
                    TextSpan(
                      text: "for you",
                      style: AppFont.mediumBoldColorWhite_14,
                    ),
                  ],
                )),
              ),
              AppSizers.height15,
              Container(
                height: 15.h,
                margin: const EdgeInsets.fromLTRB(
                    Dimens.margin25, 0, Dimens.margin25, Dimens.margin10),
                padding: const EdgeInsets.symmetric(vertical: Dimens.margin15),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.colorGolden),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(children: [
                  Lottie.asset(AppImages.ic_GoldCoinAnimation,width: 40.w,height:100.h),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Assured returns on gold savings",
                          style: AppFont.mediumBoldColorWhite_15),
                      Text("Explore \u{2192}",
                          style: AppFont.mediumBoldColorWhite_15),
                    ],
                  )),
                  AppSizers.width10
                ]),
              ),
              AppSizers.height30,
            ],
          ),
        ],
      ),
    );
  }
}
