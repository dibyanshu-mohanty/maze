import 'package:flutter/cupertino.dart';
import 'package:maze/view/screens/homeScreen/homescreen.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import '../../../theme/coreimport.dart';
import '../../utils/digitalGoldScreen/swipetopaybutton.dart';

class ConfirmationBottomSheet extends StatelessWidget {
  const ConfirmationBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: AppColors.colorGrey2,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            )),
        constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.7),
        padding: const EdgeInsets.only(top: Dimens.margin25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100.w,
                alignment: Alignment.center,
                child: const SizedBox(
                  width: 50.0,
                  child: Divider(
                    thickness: 4.0,
                    color: AppColors.colorGrey8,
                  ),
                ),
              ),
              AppSizers.height15,
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                    right: Dimens.margin15, left: Dimens.margin15),
                child: Text(
                  'Buy Gold',
                  style: AppFont.boldColorWhite_20,
                ),
              ),
              AppSizers.height10,
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: Dimens.margin30, vertical: Dimens.margin20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("0.5 grams",
                            style: AppFont.mediumBoldColorGolden_13),
                        AppSizers.width5,
                        Text("@ \u{20B9} 54000/gram",
                            style: AppFont.mediumBoldColorWhite_13),
                      ],
                    ),
                    Text("\u{20B9} 27000",
                        style: AppFont.mediumBoldColorWhite_13),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: Dimens.margin20),
                padding: const EdgeInsets.all(Dimens.margin10),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.colorGrey9,
                    borderRadius: BorderRadius.circular(Dimens.margin4)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "3% GST",
                          style: AppFont.semiBoldColorWhite_15,
                        ),
                        Text("\u{20B9} 20.0",
                            style: AppFont.semiBoldColorWhite_15),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Fees",
                          style: AppFont.semiBoldColorWhite_15,
                        ),
                        Text("\u{20B9} 20.0",
                            style: AppFont.semiBoldColorWhite_15),
                      ],
                    ),
                  ],
                )
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: Dimens.margin30, vertical: Dimens.margin20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Final Amount",
                      style: AppFont.boldColorWhite_15,
                    ),
                    Text("\u{20B9} 27020.00",style: AppFont.semiBoldColorWhite_15,),
                  ],
                ),
              ),
              const SwipetoPay(),
            ],
          ),
        ));
  }
}
