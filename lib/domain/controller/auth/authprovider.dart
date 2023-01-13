import 'package:flutter/cupertino.dart';
import 'package:maze/data/auth/model/newuserauthmodel.dart';
import 'package:maze/data/auth/model/signeduserauthmodel.dart';
import 'package:maze/data/auth/service/userlogin.dart';
import 'package:maze/domain/services/db.dart';

class AuthProvider with ChangeNotifier{
    NewUser? _signupUser;
    NewUser get signupUser{
      return _signupUser!;
    }

    SignedUser? _loginUser;
    SignedUser get loginUser{
      return _loginUser!;
    }

    Future<void> authRequest(String phone, String type) async{
       Map<String,dynamic> authRequestDetails = await UserLogin().sendOtp(phone, type);
       _signupUser = NewUser(phone: phone, type: type, hash: authRequestDetails["hash"]);
       notifyListeners();
    }

    Future<void> loginRequest(String otp) async{
      try{
        Map<String,dynamic> loginRequestDetails = await UserLogin().loginNewUser(_signupUser!.phone, _signupUser!.type, _signupUser!.hash, otp);
        _loginUser = SignedUser(message: loginRequestDetails["message"], details: loginRequestDetails["details"], token: loginRequestDetails["token"], refreshToken: loginRequestDetails["refreshToken"]);
        HiveDB.addData("jwt", _loginUser!.token);
        HiveDB.addData("refreshJWT", _loginUser!.refreshToken);
        notifyListeners();
      } catch (e) {
        print(e.toString());
      }
    }

}