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
      onCompleted: (v) async {
        //......................................................Shubham Edited Code............................................//
        // showDialog(
        //   context: context,
        //   builder: (context) {
        //     return const Center(
        //         child: CircularProgressIndicator(
        //       color: Colors.white,
        //     ));
        //   },
        // );
        // final prefs = await SharedPreferences.getInstance();
        // // Try reading data from the 'action' key. If it doesn't exist, returns null.
        // final String? type = prefs.getString('userType');
        // final String? phoneNumber = prefs.getString('phoneNumber');
        // final int? otp = prefs.getInt('otp');
        // final String? hash = prefs.getString('hash');
        // final http.Response otpResponse;
        // otpResponse = await http.post(
        //   Uri.parse(baseUrl + ApiRoutes.login), // api
        //   headers: header,
        //   body: jsonEncode(
        //     <String, dynamic>{
        //       "phone": phoneNumber,
        //       "type": type,
        //       "hash": hash,
        //       "otp": otp
        //     },
        //   ),
        // );
        // var otpJson = jsonDecode(otpResponse.body);

        // // ignore: use_build_context_synchronously
        // Navigator.of(context).pop();
        // if (otpResponse.statusCode == 200) {
        // ignore: use_build_context_synchronously
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainFrame()),
        );
      },
      // },
      onChanged: (value) {},
      beforeTextPaste: (text) {
        return true;
      },
    );
  }
}
