import 'package:flutter/cupertino.dart';
import 'package:maze/view/widgets/core/custombutton.dart';
import 'package:maze/view/widgets/digitalGoldScreen/confirmationbottomsheet.dart';
import 'package:maze/view/widgets/digitalGoldScreen/investedamountholder.dart';
import 'package:maze/view/widgets/digitalGoldScreen/priceholdercontainer.dart';
import '../../../theme/coreimport.dart';
import '../../utils/baseappbar.dart';
import '../../utils/staticUiThemes/staticuielements.dart';

class GoldScreenTransaction extends StatefulWidget {
  const GoldScreenTransaction({Key? key}) : super(key: key);

  @override
  State<GoldScreenTransaction> createState() => _GoldScreenTransactionState();
}

class _GoldScreenTransactionState extends State<GoldScreenTransaction> {
  bool isFiatInput = true;
  final TextEditingController buyAmountController = TextEditingController();

  Future showTransactionConfirmationSheet() async {
    return await showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        )),
        builder: (context) {
          return const ConfirmationBottomSheet();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          Expanded(
              child: Column(
            children: [
              const PriceHolderContainer(isBuy: true),
             const InvestedAmountContainer(),
              Container(
                height: 8.h,
                margin: const EdgeInsets.fromLTRB(Dimens.margin25,
                    Dimens.margin25, Dimens.margin25, Dimens.margin5),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: buyAmountController,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.number,
                        onChanged: (value) {},
                        style: AppFont.semiBoldColorWhite_15.copyWith(
                          letterSpacing: 0.5,
                        ),
                        maxLines: null,
                        decoration: InputDecoration(
                          fillColor: AppColors.colorGrey7,
                          filled: true,
                          hintStyle: AppFont.mediumBoldColorGrey6_15,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(9),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Enter amount",
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 12,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isFiatInput = true;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(10).copyWith(
                                  topRight: const Radius.circular(0),
                                  bottomRight: const Radius.circular(0),
                                ),
                                color: isFiatInput
                                    ? AppColors.colorGolden
                                    : AppColors.colorGrey2,
                              ),
                              child: Text("INR",
                                  style: isFiatInput
                                      ? AppFont.regularColorBlack_12
                                      : AppFont.regularColorWhite_12),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              setState(() {
                                isFiatInput = false;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(10).copyWith(
                                  topLeft: const Radius.circular(0),
                                  bottomLeft: const Radius.circular(0),
                                ),
                                color: isFiatInput
                                    ? AppColors.colorGrey2
                                    : AppColors.colorGolden,
                              ),
                              child: Text("GMS",
                                  style: isFiatInput
                                      ? AppFont.regularColorWhite_12
                                      : AppFont.regularColorBlack_12),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: 100.w,
                margin: const EdgeInsets.symmetric(horizontal: Dimens.margin20),
                child: Row(
                  children: List.generate(
                    isFiatInput
                        ? amountDefault.length
                        : goldAmountDefault.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: Dimens.margin5),
                      child: ChoiceChip(
                        label: Text(
                          isFiatInput
                              ? "\u{20B9} ${amountDefault[index]}"
                              : "${goldAmountDefault[index]} g",
                          style: isFiatInput
                              ? buyAmountController.text == amountDefault[index]
                                  ? AppFont.mediumBoldColorBlack_13
                                  : AppFont.mediumBoldColorWhite_13
                              : buyAmountController.text ==
                                      goldAmountDefault[index]
                                  ? AppFont.mediumBoldColorBlack_13
                                  : AppFont.mediumBoldColorWhite_13,
                        ),
                        selected: isFiatInput
                            ? buyAmountController.text == amountDefault[index]
                            : buyAmountController.text ==
                                goldAmountDefault[index],
                        onSelected: (_) {
                          setState(() {
                            isFiatInput
                                ? buyAmountController.text =
                                    amountDefault[index]
                                : buyAmountController.text =
                                    goldAmountDefault[index];
                          });
                        },
                        selectedColor: AppColors.colorWhite,
                        backgroundColor: AppColors.colorGrey1,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
          CustomButton(
              onPressed: () {
                showTransactionConfirmationSheet();
              },
              buttonColor: AppColors.colorGolden,
              child: Text(
                "Continue",
                style: AppFont.mediumBoldColorBlack_16,
              )),
          AppSizers.height20,
        ],
      ),
    );
  }
}
