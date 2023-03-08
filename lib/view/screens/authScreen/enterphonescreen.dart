import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:maze/view/utils/uithemes/snackbarmessages.dart';
import 'package:provider/provider.dart';

import 'package:maze/theme/coreimport.dart';

import '../../../constants/constRouteNames.dart';
import '../../../controller/providers/auth/authprovider.dart';
import '../../../routes.dart';
import '../../utils/appscreenbackground.dart';
import '../../widgets/authScreen/otpfields.dart';

class EnterPhoneNumber extends StatefulWidget {
  const EnterPhoneNumber({Key? key}) : super(key: key);

  @override
  State<EnterPhoneNumber> createState() => _EnterPhoneNumberState();
}

class _EnterPhoneNumberState extends State<EnterPhoneNumber> {
  bool _isDone = false;
  bool _phoneEntered = false;
  bool _isLoading = false;
  final fieldTextController = TextEditingController();
  final phoneTextController = TextEditingController();
  final otpTextController = TextEditingController();

  bool validateMobile(String number) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(pattern);
    if (number.isEmpty) {
      return false;
    } else if (!regExp.hasMatch(number)) {
      return false;
    }
    return true;
  }

  void requestForOTP(
      AuthProvider authProviderObj) async {
    String numberEntered = fieldTextController.text.toString() +
        phoneTextController.text.toString();
    final validNumber = validateMobile(numberEntered);
    if (validNumber) {
      await authProviderObj.authRequest(numberEntered, "TEEN", context);
      FocusScopeNode().unfocus();
      final userResponse = authProviderObj.signupUser;
      if (userResponse.otp != 0) {
        setState(() {
          _phoneEntered = true;
          _isLoading = false;
        });
      } else {
        messageSnackBar(context, "Please Try Again");
        setState(() {
          _phoneEntered = false;
          _isLoading = false;
        });
      }
    } else {
      messageSnackBar(context, "Enter Valid Phone Number");
      setState(() {
        _phoneEntered = false;
        _isLoading = false;
      });
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    fieldTextController.text = "+91";
    //final cspObj = Provider.of<CategorySelectProvider>(context);
    final authProviderObj = Provider.of<AuthProvider>(context);
    return Scaffold(
      body: Stack(
        children: [
          const AppScreenBackground(),
          Container(
            margin: const EdgeInsets.fromLTRB(40.0, 70.0, 40.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "verification",
                    style: AppFont.regularColorWhite_18,
                  ),
                  const SizedBox(
                    height: Dimens.margin20,
                  ),
                  Text(
                    _phoneEntered
                        ? "Please Enter the Verification \nCode Received."
                        : "Please Enter Your Phone \nNumber.",
                    style: AppFont.mediumBoldColorWhite_18,
                  ),
                  const SizedBox(height: Dimens.margin40),
                  _phoneEntered
                      ? OTPField(
                          otpController: otpTextController,
                        )
                      : Container(
                          width: 100.w,
                          height: 5.h,
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 6.0, 10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(19.0),
                              border: Border.all(
                                  color: AppColors.colorWhite, width: 1.0)),
                          //padding: EdgeInsets.symmetric(vertical: 1.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 22.w,
                                height: 5.h,
                                //alignment: Alignment.center,
                                child: TextField(
                                  textAlignVertical: TextAlignVertical.center,
                                  controller: fieldTextController,
                                  maxLines: 1,
                                  enabled: false,
                                  style: AppFont.regularColorWhite_18
                                      .copyWith(letterSpacing: 0.1 * 18.w),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 1.7.h, horizontal: 2.w),
                                    constraints: BoxConstraints(maxHeight: 5.h),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50.w,
                                height: 5.h,
                                //alignment: Alignment.center,
                                child: Center(
                                  child: TextField(
                                    textAlignVertical: TextAlignVertical.center,
                                    maxLines: 1,
                                    cursorHeight: 18.0,
                                    controller: phoneTextController,
                                    style: AppFont.regularColorWhite_18
                                        .copyWith(letterSpacing: 0.1 * 18.w),
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(10),
                                    ],
                                    onChanged: (value) {
                                      if (value.length == 10) {
                                        setState(() {
                                          _isDone = true;
                                        });
                                      } else {
                                        setState(() {
                                          _isDone = false;
                                        });
                                      }
                                    },
                                    cursorColor: AppColors.colorWhite,
                                    cursorWidth: 0.5,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 1.7.h),
                                        constraints:
                                            BoxConstraints(maxHeight: 5.h)),
                                  ),
                                ),
                              ),
                            ],
                          )),
                  AppSizers.height60,
                  _isLoading
                      ? SpinKitFadingCircle(
                          color: AppColors.colorWhite,
                          size: 10.w,
                        )
                      : GestureDetector(
                          onTap: _phoneEntered
                              ? () async {
                                  setState(() {
                                    _isLoading = true;
                                  });
                                  await authProviderObj.loginRequest(context);
                                  _isLoading = false;
                                  Navigator.pushReplacementNamed(context, createProfile);
                                  // if (otpTextController.text !=
                                  //     authProviderObj.signupUser.otp
                                  //         .toString()) {
                                  //   messageSnackBar(context, "Wrong OTP");
                                  //   setState(() {
                                  //     _isLoading = false;
                                  //   });
                                  // } else {
                                  //   await authProviderObj.loginRequest(context);
                                  //   _isLoading = false;
                                  //   Navigator.pushNamed(context, createProfile);
                                  // }
                                }
                              : () async {
                                  if (_isDone) {
                                    setState(() {
                                      _isLoading = true;
                                    });
                                    requestForOTP(authProviderObj);
                                  }
                                },
                          child: Center(
                            child: Container(
                              width: 18.w,
                              height: 18.w,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _isDone
                                      ? AppColors.colorWhite
                                      : Colors.transparent,
                                  border: Border.all(
                                      color: AppColors.colorWhite, width: 1.0)),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.arrow_forward,
                                color: _isDone
                                    ? AppColors.colorBlack
                                    : AppColors.colorWhite,
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
