import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_font.dart';
import 'package:http/http.dart' as http;

import '../../screens/authScreen/createprofilescreen.dart';
import '../../screens/homeScreen/homescreen.dart';
import '../../screens/mainframe.dart';

class OTPField extends StatelessWidget {
  final otpController;
  OTPField({Key? key,required this.otpController}) : super(key: key);

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
      controller: otpController,
      keyboardType: TextInputType.number,
      onCompleted: (v) async {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => MainFrame()),
        // );
      },
      // },
      onChanged: (value) {},
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}
