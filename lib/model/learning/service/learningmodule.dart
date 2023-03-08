import 'dart:io';
import 'package:maze/model/constants/networkoptions.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import '../../../controller/providers/auth/authprovider.dart';
import '../../../theme/coreimport.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:maze/view/utils/staticUiThemes/errors.dart';
import 'package:maze/view/utils/uithemes/snackbarmessages.dart';



import '../../constants/appwideexecutions.dart';

class LearningModule {
  Future<Map<String, dynamic>?> getAllModuleDetails(
      BuildContext context) async {
    Response allModuleResponse;
    String? token;
    dio.interceptors.addAll(
      [
        InterceptorsWrapper(onRequest: (RequestOptions requestOptions,
            RequestInterceptorHandler requestHandler) async {
          await getToken().then((value){
            token = value;
          });
          if (token != null) {
            requestOptions.headers[HttpHeaders.authorizationHeader] =
            'Bearer $token';
            requestHandler.next(requestOptions);
          } else if (token == null || token!.isEmpty) {
            await refreshToken(context);
            await getToken().then((value){
              token = value;
            });
            requestOptions.headers[HttpHeaders.authorizationHeader] =
            'Bearer $token';
            requestHandler.next(requestOptions);
          }
        }, onError: (error, ErrorInterceptorHandler handler) async{
            if(error.response?.statusCode != 200){
              await refreshToken(context);
              await getToken().then((value){
                token = value;
              });
              if(token !=null) {
                return handler.resolve(await retryRequest(error.requestOptions));
              } else {
                return handler.next(error);
              }
            }
        }
        ),
      ],
    );
    try {
      allModuleResponse = await dio.get("learn/module");
      return allModuleResponse.data;
    } on NullAuthException {
      NullAuthException naException = NullAuthException();
      messageSnackBar(context, naException.nullAuthMessage());
    } on ApiStatusException {
      ApiStatusException apiStatsException = ApiStatusException();
      messageSnackBar(context, apiStatsException.apiStatusMessage());
    }
    return null;
  }

  Future<Map<String, dynamic>?> getSingleModuleDetails(
      String moduleId, BuildContext context) async {
    Response singleModuleResponse;
    String? token;
    dio.interceptors.addAll(
      [
        InterceptorsWrapper(onRequest: (RequestOptions requestOptions,
            RequestInterceptorHandler requestHandler) async {
          await getToken().then((value){
            token = value;
          });
          if (token != null) {
            requestOptions.headers[HttpHeaders.authorizationHeader] =
            'Bearer $token';
            requestHandler.next(requestOptions);
          } else if (token == null || token!.isEmpty) {
            await refreshToken(context);
            await getToken().then((value){
              token = value;
            });
            requestOptions.headers[HttpHeaders.authorizationHeader] =
            'Bearer $token';
            requestHandler.next(requestOptions);
          }
        }, onError: (error, ErrorInterceptorHandler handler) async{
          if(error.response?.statusCode != 200){
            await refreshToken(context);
            await getToken().then((value){
              token = value;
            });
            if(token !=null) {
              return handler.resolve(await retryRequest(error.requestOptions));
            } else {
              return handler.next(error);
            }
          }
        }
        ),
      ],
    );
    try {
      singleModuleResponse = await dio.get("learn/module/$moduleId");
      return singleModuleResponse.data;
    } on NullAuthException {
      NullAuthException naException = NullAuthException();
      messageSnackBar(context, naException.nullAuthMessage());
    } on ApiStatusException {
      ApiStatusException apiStatsException = ApiStatusException();
      messageSnackBar(context, apiStatsException.apiStatusMessage());
    }
    return null;
  }
}
