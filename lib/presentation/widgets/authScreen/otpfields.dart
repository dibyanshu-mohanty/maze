import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_font.dart';


class OTPField extends StatelessWidget {
  OTPField({Key? key}) : super(key: key);

  final TextEditingController _otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      autoFocus: false,
      appContext: context,
      pastedTextStyle: AppFont.regularColorWhite_18,
      length: 6,
      obscureText: false,
      obscuringCharacter: '*',
      animationType: AnimationType.fade,
      validator: (v) {},
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(12),
        borderWidth: 1.0,
        fieldHeight: 42,
        fieldWidth: 42,
        activeColor: AppColors.colorWhite,
        inactiveColor: AppColors.colorWhite,
        selectedFillColor: AppColors.colorTransparent,
        activeFillColor: AppColors.colorTransparent,
        selectedColor: AppColors.colorWhite,
        inactiveFillColor: AppColors.colorTransparent,
      ),
      cursorColor: AppColors.colorTransparent,
      animationDuration: const Duration(milliseconds: 300),
      textStyle: AppFont.regularColorWhite_18,
      enableActiveFill: true,
      controller: _otpController,
      keyboardType: TextInputType.number,
      onCompleted: (v) {
      },
      onChanged: (value) {},
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}
