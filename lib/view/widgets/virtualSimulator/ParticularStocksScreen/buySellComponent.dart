import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maze/theme/app_colors.dart';
import 'package:maze/theme/app_font.dart';
import 'package:sizer/sizer.dart';

import '../../../../theme/app_dimens.dart';
import '../buysellbottomsheet.dart';

class BuySellComponent extends StatefulWidget {
  final String tourneyId;
  final String stockName;
  final double currentPrice;
  const BuySellComponent(
      {super.key,
      this.tourneyId = "",
      required this.stockName,
      required this.currentPrice});

  @override
  State<BuySellComponent> createState() => _BuySellComponentState();
}

class _BuySellComponentState extends State<BuySellComponent> {
  Future<void> showBuySellSheet(bool isSell) async {
    return await showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimens.margin20),
          topRight: Radius.circular(Dimens.margin20),
        )),
        backgroundColor: AppColors.colorBlack.withOpacity(0.6),
        context: context,
        builder: (context) => BuySellBottomSheet(
              tourneyId: widget.tourneyId,
              stockName: widget.stockName,
              currentPrice: widget.currentPrice,
              isSell: isSell,
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: [
          Flexible(
            child: GestureDetector(
              onTap: () async {
                await showBuySellSheet(true);
              },
              child: Container(
                // width: 182,
                height: 7.h,
                decoration: const BoxDecoration(
                  color: AppColors.colorRed2,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    "Sell",
                    textAlign: TextAlign.center,
                    style: AppFont.mediumColorWhite_16,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: GestureDetector(
              onTap: () async {
                await showBuySellSheet(false);
              },
              child: Container(
                // width: 182,
                height: 7.h,
                decoration: const BoxDecoration(
                  color: AppColors.colorDarkGreen,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    "Buy",
                    textAlign: TextAlign.center,
                    style: AppFont.mediumColorWhite_16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
