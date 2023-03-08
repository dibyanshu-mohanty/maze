
import '../../../theme/coreimport.dart';

class PrizePoolHolder extends StatelessWidget {
  final double totalPrizePool;
  const PrizePoolHolder({Key? key,required this.totalPrizePool}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: Dimens.margin15,vertical: Dimens.margin15),
      padding: const EdgeInsets.symmetric(horizontal: Dimens.margin15,vertical: Dimens.margin12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.colorLightBlue3
                .withOpacity(0.3),
            AppColors.colorWhite.withOpacity(0.0)
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
            color: AppColors.colorPink
                .withOpacity(0.4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Prize Pool",
            style: AppFont
                .regularColorGolden_20,
          ),
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
                "${totalPrizePool.toInt()}",
                style: AppFont
                    .mediumBoldColorWhite_20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
