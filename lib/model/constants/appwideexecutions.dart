

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../model/auth/service/userlogin.dart';
import '../../../controller/providers/auth/authprovider.dart';
import '../../theme/coreimport.dart';
import 'networkoptions.dart';

Future<String> getToken() async{
  SharedPreferences refs = await SharedPreferences.getInstance();
  String? authToken = refs.getString("jwt");
  return authToken!;
}

Future<void> refreshToken(BuildContext context) async {
  final sharedRefs = await SharedPreferences.getInstance();
  final refreshToken = sharedRefs.getString("refreshJwt");
  if (refreshToken != null) {
    Map<String, dynamic>? refreshAuthDetails =
    await UserLogin().refreshLogin(refreshToken, context);
    if (refreshAuthDetails != null) {
      final refs = await SharedPreferences.getInstance();
      await refs.setString('jwt', refreshAuthDetails["token"]);
    }
  }
}
Future<Response<dynamic>> retryRequest(RequestOptions requestOptions) async {
  final options = Options(
    method: requestOptions.method,
    headers: requestOptions.headers,
  );
  return dio.request<dynamic>(requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: options);
}

