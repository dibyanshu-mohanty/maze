import 'dart:ui';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lottie/lottie.dart';
import 'package:maze/view/utils/uithemes/snackbarmessages.dart';
import 'package:multi_value_listenable_builder/multi_value_listenable_builder.dart';
import '../../../model/virtualSimulatorModels/service/ticker.dart';
import '../../../theme/coreimport.dart';
import '../../utils/staticUiThemes/staticuielements.dart';

class BuySellBottomSheet extends StatefulWidget {
  final String tourneyId;
  final String stockName;
  final double currentPrice;
  final bool isSell;
  BuySellBottomSheet(
      {Key? key,
      this.tourneyId = "",
      required this.stockName,
      required this.currentPrice,
      required this.isSell})
      : super(key: key);

  @override
  State<BuySellBottomSheet> createState() => _BuySellBottomSheetState();
}

class _BuySellBottomSheetState extends State<BuySellBottomSheet> {
  TextEditingController qtyController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  ValueNotifier<bool> isLoading = ValueNotifier(false);
  ValueNotifier<bool> isPaymentDone = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return MultiValueListenableBuilder(
        valueListenables: [isLoading, isPaymentDone],
        builder: (context, _, __) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 5.0, sigmaX: 5.0),
            child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.colorLightBlue3.withOpacity(0.7),
                      AppColors.colorWhite.withOpacity(0.0),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border:
                      Border.all(color: AppColors.colorPink.withOpacity(0.4)),
                ),
                child: isPaymentDone.value
                    ? Column(
                        children: [
                          Lottie.asset(AppImages.ic_successAnimation),
                          AppSizers.height30,
                          Text(
                            "Successfully purchased ${qtyController.text} stocks of ${widget.stockName} .",
                            style: AppFont.mediumBoldColorWhite_15,
                            textAlign: TextAlign.center,
                            softWrap: true,
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              AppSizers.height20,
                              Text(
                                widget.stockName,
                                style: AppFont.mediumBoldColorWhite_15,
                              ),
                              AppSizers.height10,
                              Text(
                                "\u{20B9} ${widget.currentPrice}",
                                style: AppFont.lightColorWhite_12,
                              ),
                              AppSizers.height10,
                              SizedBox(
                                  width: 75.w,
                                  child: const Divider(
                                    thickness: 2.0,
                                    color: AppColors.colorWhite,
                                  )),
                            ],
                          ),
                          AppSizers.height20,
                          Text(
                            "Limit Order",
                            style: AppFont.regularColorWhite_16,
                          ),
                          AppSizers.height50,
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Dimens.margin20,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Quantity",
                                      style: AppFont.regularColorWhite_16,
                                    ),
                                    SizedBox(
                                      width: 25.w,
                                      height: 4.h,
                                      child:  TextField(
                                        controller: qtyController,
                                        textInputAction: TextInputAction.done,
                                        keyboardType: TextInputType.number,
                                        onChanged: (value) {
                                          priceController.text = (double.parse(qtyController.text) * widget.currentPrice).toString();
                                        },
                                        cursorColor: AppColors.colorWhite,
                                        style: AppFont.semiBoldColorWhite_15
                                            .copyWith(
                                          letterSpacing: 0.5,
                                        ),
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        decoration: inputDecorationBottomSheet.copyWith(hintText: "01"),
                                        ),
                                      ),
                                  ],
                                ),
                                AppSizers.height30,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Price",
                                      style: AppFont.regularColorWhite_16,
                                    ),
                                    SizedBox(
                                      width: 30.w,
                                      child: TextField(
                                        controller: priceController,
                                        textInputAction: TextInputAction.done,
                                        keyboardType: TextInputType.number,
                                        onChanged: (value) {},
                                        style: AppFont.semiBoldColorWhite_15
                                            .copyWith(
                                          letterSpacing: 0.5,
                                        ),
                                        readOnly: true,
                                        textAlign: TextAlign.end,
                                        maxLines: null,
                                        decoration: InputDecoration(
                                          border: const UnderlineInputBorder(
                                              borderSide: BorderSide.none),
                                          hintText: "\u{20B9} 00.00",
                                          hintStyle:
                                              AppFont.regularColorGrey8_15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          GestureDetector(
                            onTap: widget.isSell
                            ? () async {
                              if (qtyController.text.isEmpty) {
                                messageSnackBar(
                                    context, "Quantity can't be empty");
                                return;
                              }
                              isLoading.value = true;
                              final response = await Tickers().sellStock(
                                  context,
                                  widget.tourneyId,
                                  widget.stockName,
                                  int.parse(qtyController.text));
                              if (response != null &&
                                  response["order_id"] != "") {
                                isPaymentDone.value = true;
                                isLoading.value = false;
                              } else {
                                isPaymentDone.value = false;
                                isLoading.value = false;
                              }
                            }
                             :   () async {
                              if (qtyController.text.isEmpty) {
                                messageSnackBar(
                                    context, "Quantity can't be empty");
                                return;
                              }
                              isLoading.value = true;
                              final response = await Tickers().buyStock(
                                  context,
                                  widget.tourneyId,
                                  widget.stockName,
                                  int.parse(qtyController.text));
                              if (response != null &&
                                  response["order_id"] != "") {
                                isPaymentDone.value = true;
                                isLoading.value = false;
                              } else {
                                isPaymentDone.value = false;
                                isLoading.value = false;
                              }
                            },
                            child: isLoading.value
                                ? Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: Dimens.margin20),
                                alignment: Alignment.center,
                                child: SpinKitThreeBounce(color: AppColors.colorWhite,size: 3.w,))
                                : Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: Dimens.margin25,
                                  vertical: Dimens.margin20),
                              padding: const EdgeInsets.symmetric(
                                  vertical: Dimens.margin15),
                              width: double.infinity,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.colorDarkGreen,
                                borderRadius: BorderRadius.circular(9.0),
                              ),
                              child: Text(
                                "Buy",
                                style: AppFont.semiBoldColorWhite_15,
                              ),
                            ),
                          )
                        ],
                      )),
          );
        });
  }
}
