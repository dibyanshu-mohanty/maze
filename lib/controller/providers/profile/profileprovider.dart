
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:maze/model/profile/model/profilemodel.dart';
import 'package:maze/model/profile/service/addprofile.dart';
import 'package:maze/view/utils/staticUiThemes/errors.dart';

import '../../../view/utils/uithemes/snackbarmessages.dart';

class ProfileProvider with ChangeNotifier{
  ProfileModel newProfile = ProfileModel(name: "", gender: "", email: "", dob: "");

  Future<void> profileRequest(String name, String email, String gender, String dob, BuildContext context) async{
    try{
      Map<String, dynamic>? profileRequestDetails =
      await ProfileLogin().addProfile(name, gender, dob,context);
      if(profileRequestDetails != null){
        newProfile = ProfileModel(name: name, gender: gender, email: email, dob: dob);
        notifyListeners();
      } else {
        throw NullAuthException();
      }
    } on NullAuthException {
      NullAuthException naException = NullAuthException();
      messageSnackBar(context, naException.nullAuthMessage());
    } catch (e) {
      messageSnackBar(context, "Something Went Wrong");
    }
  }
}