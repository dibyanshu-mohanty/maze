import 'package:connectivity_plus/connectivity_plus.dart';

const String mainServer = "https://api.yaropay.in/v1";
const String testServer = "";

Map<String,String> authorisedHeaders (String bearerToken) {
    return {
      'Authorization' : "Bearer " + bearerToken
    };
}

const Map<String,String> unauthorisedHeaders = {
  'Content-type' : "application/json",
};


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