

import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

import '../../../theme/coreimport.dart';

class InvestedAmountContainer extends StatelessWidget {
  const InvestedAmountContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 100.w,
      margin: const EdgeInsets.symmetric(horizontal: Dimens.margin25),
      padding: const EdgeInsets.symmetric(
          vertical: Dimens.margin20, horizontal: Dimens.margin20),
      decoration: BoxDecoration(
        color: AppColors.colorGrey2.withOpacity(0.7),
        borderRadius: BorderRadius.circular(Dimens.margin15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Iconify(
                MaterialSymbols.account_balance_wallet_outline,
                color: AppColors.colorWhite,
              ),
              AppSizers.width10,
              Text(
                "Invested Amount",
                style: AppFont.mediumBoldColorWhite_15,
              ),
            ],
          ),
          Text(
            "\u{20B9} 520.23",
            style: AppFont.semiBoldColorWhite_15,
          ),
        ],
      ),
    );
  }
}
