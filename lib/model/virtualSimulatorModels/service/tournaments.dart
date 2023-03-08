import 'dart:io';
import 'package:dio/dio.dart';
import '../../../theme/coreimport.dart';
import '../../../view/utils/staticUiThemes/errors.dart';
import '../../../view/utils/uithemes/snackbarmessages.dart';
import '../../constants/appwideexecutions.dart';
import '../../constants/networkoptions.dart';

class Tournament {
  Future<Map<String,dynamic>?> getTournamentId(BuildContext context) async {
    try {
      Response tournamentData;
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
            if(error.response?.statusCode == 404){
              handler.next(error);
            } else if(error.response?.statusCode != 200){
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
      tournamentData = await dio.get("simulator/tournament");
      return tournamentData.data;
    } on ApiStatusException {
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(context, apiException.apiStatusMessage());
    } on DioError catch (e) {
      print(e);
    }
    return null;
  }

  Future<Map<String, dynamic>?> getTournamentDetails(BuildContext context, String id) async {
    try {
      Response tournamentDetailData;
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
            if(error.response?.statusCode == 502){
              throw ApiStatusException();
            } else if(error.response?.statusCode != 200){
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
      tournamentDetailData = await dio.get("simulator/tournament/$id");
      return tournamentDetailData.data;
    } on ApiStatusException {
      print("Okay!");
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(context, apiException.apiStatusMessage());
    } catch (e) {
      messageSnackBar(context, "No Internet");
    }
    return null;
  }

  Future<Map<String, dynamic>?> enrollUser(BuildContext context, String id) async {
    try {
      Response enrollData;
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
            if(error.response?.statusCode == 502){
              throw ApiStatusException();
            } else if(error.response?.statusCode != 200){
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
      enrollData = await dio.post("simulator/tournament/$id/enroll-tournament");
      return enrollData.data;
    } on ApiStatusException {
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(context, apiException.apiStatusMessage());
    } catch (e) {
      messageSnackBar(context, "No Internet");
    }
    return null;
  }
}
