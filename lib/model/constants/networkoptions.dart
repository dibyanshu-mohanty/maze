import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

const String mainServer = "https://stage-api.yaropay.in/v1";
const String testServer = "";

Map<String,String> authorisedHeaders (String bearerToken) {
    return {
      'Authorization' : "Bearer " + bearerToken
    };
}

class NetworkOptions{
  Future<bool> checkConnection() async{
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      return true;
    } else if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    } else if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else if (connectivityResult == ConnectivityResult.vpn){
      return false;
    } else {
      return true;
    }
  }
}

Dio dio = Dio(BaseOptions(
  connectTimeout: const Duration(seconds: 60),
  baseUrl: "https://stage-api.yaropay.in/v1/",
  responseType: ResponseType.json,
));