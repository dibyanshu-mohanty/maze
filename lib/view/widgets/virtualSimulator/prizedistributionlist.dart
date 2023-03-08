

import 'package:maze/view/utils/uithemes/gradientdivider.dart';

import '../../../theme/coreimport.dart';

class PrizeDistributionList extends StatelessWidget {
  final double firstPrize;
  final double secondPrize;
  final double thirdPrize;
  const PrizeDistributionList({Key? key,required this.firstPrize, required this.secondPrize, required this.thirdPrize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.margin30),
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Rank",style: AppFont.regularColorWhite_12,),
              Text("Reward",style: AppFont.regularColorWhite_12,)
            ],
          ),
          const GradientDivider(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.margin10,vertical: Dimens.margin05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("#1",style: AppFont.boldColorGolden2_20,),
                Row(
                  children: [
                    Container(
                      height: 1.5.h,
                      width: 7.w,
                      margin:
                      EdgeInsets.symmetric(
                          horizontal: 1.w),
                      // alignment: Alignment.center,
                      child: Image.asset(
                          AppImages.ic_MazeLogo,
                          fit: BoxFit.cover),
                    ),
                    Text(
                      "${firstPrize.toInt()}",
                      style: AppFont
                          .mediumBoldColorWhite_15,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const GradientDivider(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.margin10,vertical: Dimens.margin05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("#2",style: AppFont.boldColorWhite_20,),
                Row(
                  children: [
                    Container(
                      height: 1.5.h,
                      width: 7.w,
                      margin:
                      EdgeInsets.symmetric(
                          horizontal: 1.w),
                      // alignment: Alignment.center,
                      child: Image.asset(
                          AppImages.ic_MazeLogo,
                          fit: BoxFit.cover),
                    ),
                    Text(
                      "${secondPrize.toInt()}",
                      style: AppFont
                          .mediumBoldColorWhite_15,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const GradientDivider(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.margin10,vertical: Dimens.margin05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("#3",style: AppFont.boldColorWhite_20,),
                Row(
                  children: [
                    Container(
                      height: 1.5.h,
                      width: 7.w,
                      margin:
                      EdgeInsets.symmetric(
                          horizontal: 1.w),
                      // alignment: Alignment.center,
                      child: Image.asset(
                          AppImages.ic_MazeLogo,
                          fit: BoxFit.cover),
                    ),
                    Text(
                      "${thirdPrize.toInt()}",
                      style: AppFont
                          .mediumBoldColorWhite_15,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const GradientDivider(),
        ],
      ),
    );
  }
}
