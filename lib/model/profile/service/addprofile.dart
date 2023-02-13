import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:maze/view/utils/staticUiThemes/errors.dart';
import 'package:maze/view/utils/uithemes/snackbarmessages.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../theme/coreimport.dart';
import '../../constants/networkoptions.dart';

class ProfileLogin{
  Future<Map<String,dynamic>?> addProfile(String name, String gender, String dob, BuildContext context) async{
    final addProfileObject = {
      "name": name,
      "gender": gender,
      "dob" : dob
    };
    try{
      final refs = await SharedPreferences.getInstance();
      final jwt = refs.getString("jwt");
      if(jwt == null){
        throw NullAuthException();
      } else {
        final response = await http.patch(
          Uri.parse("$mainServer/profile/update-profile"),
          headers: authorisedHeaders(jwt),
          body: addProfileObject,
        );
        if(response.statusCode == 200){
          return jsonDecode(response.body);
        } else {
          throw ApiStatusException();
        }
      }
    } on NullAuthException{
      NullAuthException naException = NullAuthException();
      messageSnackBar(context, naException.nullAuthMessage());
    } on ApiStatusException {
      ApiStatusException apiStatsException = ApiStatusException();
      messageSnackBar(context, apiStatsException.apiStatusMessage());
    }
  }
}