import '../../../theme/coreimport.dart';
import '../../utils/baseappbar.dart';

class BuyGoldScreen extends StatelessWidget {
  const BuyGoldScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BaseAppBar(
            title: 'Buy Digital Gold',
            appBar: AppBar(),
            mLeftAction: () {
              Navigator.pop(context);
            },
          ),
          Container(
            width: 100.w,
            margin: const EdgeInsets.symmetric(
                horizontal: Dimens.margin20, vertical: Dimens.margin25),
            padding: const EdgeInsets.symmetric(vertical: Dimens.margin14, horizontal: Dimens.margin20),
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
                      text: "Buy ",
                      style: AppFont.mediumBoldColorWhite_15,
                    ),
                    TextSpan(
                      text: "Gold",
                      style: AppFont.mediumBoldColorGolden_14,
                    ),
                  ])),
                ),
                Chip(
                  avatar: const CircleAvatar(radius: 5.0,backgroundColor: AppColors.colorLightRed,),
                  label: Text(
                    "Buy Price : \u{20B9} 5.15/mg",
                    style: AppFont.mediumBoldColorWhite_12,
                  ),
                  backgroundColor: AppColors.colorBlack,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
