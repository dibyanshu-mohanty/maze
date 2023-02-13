import 'dart:ui';
import 'package:maze/constants/constRouteNames.dart';
import 'package:maze/theme/coreimport.dart';

class DigitalGoldScreen extends StatelessWidget {
  const DigitalGoldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Container(
                height: 55.h,
                width: 100.w,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  AppColors.colorGolden.withOpacity(0.76),
                  AppColors.colorBlack.withOpacity(0.0),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              )),
          Positioned(
              top: 2,
              child: Image.asset(AppImages.ic_digitalcoins,height: 30.h,width: 100.w,)),
            Positioned(
                top: 5.h,
                left: 3.w,
                child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.navigate_before,color: AppColors.colorWhite,size: Dimens.margin40,),
            )),
          ListView(
            children: [
              SizedBox(
                height: 40.h,
                width: 100.w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 75.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.colorGolden,width: 2),
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.colorGolden.withOpacity(0.3),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaY: 20,sigmaX: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Your gold stash",style: AppFont.boldColorWhite_20,),
                              Text("\u{20B9} 51.08",style: AppFont.boldColorWhite_35,)
                            ],
                          ),
                        ),
                      ),
                    ),
                    AppSizers.height20,
                    Text("Buy price: \u{20B9} 5.15/mg",style: AppFont.mediumBoldColorWhite_15,),
                    AppSizers.height20,
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, buyDigitalGoldScreen);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: Dimens.margin35,vertical: Dimens.margin10),
                        decoration: BoxDecoration(
                          color: AppColors.colorGolden,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Text("Invest More",style: AppFont.mediumBoldColorBlack_16,textAlign: TextAlign.center,),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(AppImages.ic_goldpot,height: 30.h,),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(horizontal: Dimens.margin25, ),
                    child: RichText(text: TextSpan(
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
                  margin: const EdgeInsets.fromLTRB(Dimens.margin25, 0, Dimens.margin25, Dimens.margin10),
                  padding: const EdgeInsets.symmetric(vertical: Dimens.margin15),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      AppColors.colorGolden,
                      AppColors.colorGrey2,
                    ],begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                child: Row(
                  children: [
                    Expanded(child: Image.asset(AppImages.ic_coinStack)),
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Assured returns on gold savings",style: AppFont.mediumBoldColorWhite_15),
                        Text("Explore \u{2192}",style: AppFont.mediumBoldColorWhite_15),
                      ],
                    )),
                    AppSizers.width10
                  ]
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
