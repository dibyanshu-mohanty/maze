import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../constants/networkoptions.dart';

class UserLogin{

  Future<Map<String, dynamic>> sendOtp(String phone, String type) async{
    final sendOtpObject = {
      "phone" : phone,
      "type" : type,
    };
    final response = await http.post(Uri.parse("$mainServer/auth/login"),body: jsonEncode(sendOtpObject));
    return jsonDecode(response.body);
  }

  Future<Map<String, dynamic>> loginNewUser(String phone, String type, String hash, String otp) async{
    final loginObject = {
      "phone" : phone,
      "type" : type,
      "hash" : hash,
      "otp" : otp
    };
    final response = await http.post(Uri.parse("$mainServer/auth/verify-login"),body: jsonEncode(loginObject));
    return jsonDecode(response.body);
  }
}