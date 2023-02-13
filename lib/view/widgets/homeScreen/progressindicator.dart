import 'package:auto_size_text/auto_size_text.dart';
import 'package:maze/theme/coreimport.dart';

class ProgressIndicatorContainer extends StatelessWidget {
  const ProgressIndicatorContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 100.w,
      height: deviceWidth < 350 ? 15.h : 13.h,
      margin: const EdgeInsets.symmetric(vertical: Dimens.margin10,horizontal: Dimens.margin15),
      padding: const EdgeInsets.symmetric(
          vertical: Dimens.margin15, horizontal: Dimens.margin15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimens.margin10),
        color: AppColors.colorGrey2,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "60%",
                    style: AppFont.boldColorGreen_22,
                  ),
                  SizedBox(
                    height: 3.h,
                    child: VerticalDivider(
                      thickness: 1.0,
                      color: AppColors.colorGrey3,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Resume Your Learning",
                        style: deviceWidth < 350 ? AppFont.mediumBoldColorWhite_12 : AppFont.mediumBoldColorWhite_14,
                        overflow: TextOverflow.ellipsis,
                        maxFontSize: Dimens.textSize14,
                        maxLines: 2,
                      ),
                      AutoSizeText(
                        "Up Next : Lorem Ipsum",
                        style: deviceWidth < 350 ? AppFont.regularColorGrey4_10 : AppFont.regularColorGrey4_12,
                        overflow: TextOverflow.ellipsis,
                        maxFontSize: Dimens.textSize14,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 4.h,
                width: 15.w,
                //padding: const EdgeInsets.symmetric(vertical: Dimens.margin3,horizontal: Dimens.margin10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: AppColors.colorLightGreen,
                ),
                alignment: Alignment.center,
                child: Text(
                  "Start",
                  style: AppFont.mediumBoldColorWhite_15,
                ),
              )
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: LinearProgressIndicator(
              value: 0.6,
              color: AppColors.colorGreen,
              backgroundColor: AppColors.colorGrey5,
              minHeight: 1.3.h,
            ),
          )
        ],
      ),
    );
  }
}
