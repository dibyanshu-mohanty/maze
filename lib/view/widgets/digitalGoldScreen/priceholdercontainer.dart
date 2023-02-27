
import '../../../theme/coreimport.dart';

class PriceHolderContainer extends StatelessWidget {
  final bool isBuy;
  const PriceHolderContainer({Key? key,required this.isBuy}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: const EdgeInsets.fromLTRB(Dimens.margin25, Dimens.margin25,
          Dimens.margin25, Dimens.margin15),
      padding: const EdgeInsets.symmetric(
          vertical: Dimens.margin12, horizontal: Dimens.margin20),
      decoration: BoxDecoration(
        color: AppColors.colorGrey2,
        borderRadius: BorderRadius.circular(Dimens.margin15),
      ),
      child: Row(
        children: [
          Expanded(
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: isBuy ? "Buy " : "Sell ",
                    style: AppFont.mediumBoldColorWhite_15,
                  ),
                  TextSpan(
                    text: "Gold",
                    style: AppFont.mediumBoldColorGolden_14,
                  ),
                ])),
          ),
          Chip(
            avatar: const CircleAvatar(
              radius: 5.0,
              backgroundColor: AppColors.colorLightRed,
            ),
            label: Text(
              isBuy
              ? "Buy Price : \u{20B9} 5.15/mg"
              : "Sell Price : \u{20B9} 5.15/mg",
              style: AppFont.mediumBoldColorWhite_12,
            ),
            backgroundColor: AppColors.colorBlack,
          ),
        ],
      ),
    );
  }
}
