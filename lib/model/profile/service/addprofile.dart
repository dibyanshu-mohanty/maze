import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:maze/controller/providers/auth/authprovider.dart';
import 'package:maze/view/utils/staticUiThemes/errors.dart';
import 'package:maze/view/utils/uithemes/snackbarmessages.dart';
import 'package:provider/provider.dart';
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
        print(jwt);
        await Provider.of<AuthProvider>(context,listen:false).checkRequest(context);
        final jwtNew = refs.getString("jwt");
        final response = await http.patch(
          Uri.parse("$mainServer/profile"),
          headers: authorisedHeaders(jwtNew!),
          body: addProfileObject,
        );
        if(response.statusCode == 200){
          return jsonDecode(response.body);
        } else {
          throw ApiStatusException();
        }
      } else {
        print(jwt);
        final response = await http.patch(
          Uri.parse("$mainServer/profile"),
          headers: authorisedHeaders(jwt),
          body: addProfileObject,
        );
        if(response.statusCode == 200){
          print(jsonDecode(response.body));
          return jsonDecode(response.body);
        } else {
          print(response.statusCode);
          print(jsonDecode(response.body));
          throw ApiStatusException();
        }
      }
    } on NullAuthException{
      NullAuthException naException = NullAuthException();
      messageSnackBar(context, naException.nullAuthMessage());
    } on ApiStatusException {
      ApiStatusException apiStatsException = ApiStatusException();
      messageSnackBar(context, apiStatsException.apiStatusMessage());
    } catch (e){
      messageSnackBar(context, "No Internet");
    }
    return null;
  }
}