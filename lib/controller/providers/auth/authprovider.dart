import 'package:flutter/cupertino.dart';
import 'package:maze/view/utils/staticUiThemes/errors.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../model/auth/model/newuserauthmodel.dart';
import '../../../model/auth/model/signeduserauthmodel.dart';
import '../../../model/auth/service/userlogin.dart';
import '../../../view/utils/uithemes/snackbarmessages.dart';

class AuthProvider with ChangeNotifier {
  NewUser _signupUser = NewUser();
  NewUser get signupUser {
    return _signupUser;
  }

  String _jwt = "";
  String get jwt{
    return _jwt;
  }

  SignedUser _loginUser = SignedUser(message: "", details: "", token: "", refreshToken: "");
  SignedUser get loginUser {
    return _loginUser;
  }

  Future<void> authRequest(String phone, String type,BuildContext context) async {
    try {
      Map<String, dynamic>? authRequestDetails =
      await UserLogin().sendOtp(phone, type, context);
      if (authRequestDetails != null) {
        _signupUser =
            NewUser(phone: phone,
                type: type,
                hash: authRequestDetails["hash"],
                otp: authRequestDetails["otp"]);
        notifyListeners();
      } else {
        throw NullAuthException();
      }
    } on NullAuthException {
      NullAuthException naException = NullAuthException();
      messageSnackBar(context, naException.nullAuthMessage());
    }
  }

  Future<void> checkRequest(BuildContext context) async{
    try{
      final sharedRefs = await SharedPreferences.getInstance();
      final refreshToken = sharedRefs.getString("refreshJwt");
      if(refreshToken != null) {
      Map<String, dynamic>? refreshAuthDetails =
         await UserLogin().refreshLogin(refreshToken, context);
      if (refreshAuthDetails != null) {
        _jwt = refreshAuthDetails["token"];
        final refs = await SharedPreferences.getInstance();
        await refs.setString('jwt', refreshAuthDetails["token"]);
        print(_jwt);
        notifyListeners();
      } else {
      throw LocalDBException();
      }
      } else {
        throw NullAuthException();
      }

    } on NullAuthException {
      NullAuthException naException = NullAuthException();
      messageSnackBar(context, naException.nullAuthMessage());
    } on LocalDBException {
      LocalDBException ldbException = LocalDBException();
      messageSnackBar(context, ldbException.ldbStatusMessage());
    }
  }


  Future<void> loginRequest(BuildContext context) async {
    try {
      Map<String, dynamic>? loginRequestDetails = await UserLogin().loginNewUser(
          _signupUser.phone, _signupUser.type, _signupUser.hash, _signupUser.otp,context);
      if(loginRequestDetails != null){
        _loginUser = SignedUser(
            message: loginRequestDetails["message"],
            details: loginRequestDetails["details"],
            token: loginRequestDetails["token"],
            refreshToken: loginRequestDetails["refreshToken"]);
        final refs = await SharedPreferences.getInstance();
        await refs.setString('jwt', _loginUser.token);
        await refs.setString('refreshJwt', _loginUser.refreshToken);
        notifyListeners();
      } else {
        throw NullAuthException();
      }
    } on NullAuthException {
      NullAuthException naException = NullAuthException();
      messageSnackBar(context, naException.nullAuthMessage());
    }
  }
}

class CategorySelectProvider with ChangeNotifier {
  String _type = "";
  String get type {
    return _type;
  }

  void selectType(String type) {
    _type = type;
    notifyListeners();
  }
}
