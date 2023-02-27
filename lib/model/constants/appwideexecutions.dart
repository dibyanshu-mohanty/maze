

import 'package:shared_preferences/shared_preferences.dart';

Future<String> getToken() async{
  SharedPreferences refs = await SharedPreferences.getInstance();
  String? authToken = refs.getString("jwt");
  return authToken!;
}

