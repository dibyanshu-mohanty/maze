import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:maze/view/utils/staticUiThemes/errors.dart';
import 'package:maze/view/utils/uithemes/snackbarmessages.dart';
import '../../constants/networkoptions.dart';

class UserLogin {
  Future<Map<String, dynamic>?> sendOtp(String phone, String type, BuildContext context) async {
    final sendOtpObject = {
      "phone": phone,
      "type": type,
    };
    try{
      final response = await http.post(
        Uri.parse("$mainServer/auth/login"),
        body: sendOtpObject,
      );
      if(response.statusCode == 200){
        print(jsonDecode(response.body));
        return jsonDecode(response.body);
      } else {
        throw ApiStatusException();
      }
    } on ApiStatusException {
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(context, apiException.apiStatusMessage());
    } catch(e) {
      messageSnackBar(context, "No Internet");
    }
    return null;
  }

  Future<Map<String, dynamic>?> refreshLogin(
      String jwt, BuildContext context) async {
    final refreshLoginObject = {
      "refreshToken": jwt,
    };
    try {
      final response = await http.post(
        Uri.parse("$mainServer/auth/refresh-login"),
        body: refreshLoginObject,
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw ApiStatusException();
      }
    } on ApiStatusException {
       ApiStatusException apiException = ApiStatusException();
       messageSnackBar(context, apiException.apiStatusMessage());
    } catch(e) {
      print(e.toString());
      messageSnackBar(context, "No Internet");
    }
    return null;
  }

  Future<Map<String, dynamic>?> loginNewUser(
      String phone, String type, String hash, int otp,BuildContext context) async {
    final loginObject = {
      "phone": phone,
      "type": type,
      "hash": hash,
      "otp": otp.toString()
    };
    try{
      final response = await http.post(Uri.parse("$mainServer/auth/verify-login"),
        body: loginObject,
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw ApiStatusException();
      }
    } on ApiStatusException {
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(context, apiException.apiStatusMessage());
    } catch(e) {
      messageSnackBar(context, "No Internet");
    }
    return null;
  }
}
