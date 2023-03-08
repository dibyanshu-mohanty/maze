import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import '../../../theme/coreimport.dart';
import '../../../view/utils/staticUiThemes/errors.dart';
import '../../../view/utils/uithemes/snackbarmessages.dart';
import '../../constants/appwideexecutions.dart';
import '../../constants/networkoptions.dart';

class Tickers{
  Future<Map<String, dynamic>?> availableTickersData(
      BuildContext ctx) async {
    Response availableTickers;
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
            await refreshToken(ctx);
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
            await refreshToken(ctx);
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
      availableTickers = await dio.get("$mainServer/simulator/ticker/available-tickers");
      return availableTickers.data;
    } on ApiStatusException {
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(ctx, apiException.apiStatusMessage());
    } catch (e) {
      messageSnackBar(ctx, "No Internet");
    }
    return null;
  }

  Future<Map<String, dynamic>?> tickerDetails(
      BuildContext context, String tickerSymbol) async {
    try {
      Response tickerDetails;
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
      tickerDetails = await dio.get("simulator/ticker?symbol=$tickerSymbol");
      return tickerDetails.data;
    } on ApiStatusException {
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(context, apiException.apiStatusMessage());
    } catch (e) {
      messageSnackBar(context, "No Internet");
    }
    return null;
  }

  Future<Map<String, dynamic>?> buyStock(
      BuildContext context, String tournamentId, String stockName, int quantity) async {
    try {
      Response tickerDetails;
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
            print(error.response);
            if(error.response?.statusCode == 502){
              throw ApiStatusException();
            } else if(error.response?.statusCode == 400 || error.response?.statusCode == 404 || error.response?.statusCode == 401){
              handler.resolve(error.response!);
            }
            else if(error.response?.statusCode != 200){
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
      final stockData = {
        "ticker" : stockName,
        "quantity" : quantity
      };
      tickerDetails = await dio.post("simulator/order/buy/$tournamentId",data: stockData);
      print(tickerDetails.data);
      return tickerDetails.data;
    } on ApiStatusException {
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(context, apiException.apiStatusMessage());
    } catch (e) {
      print(e.toString());
      messageSnackBar(context, "No Internet");
    }
    return null;
  }

  Future<Map<String, dynamic>?> sellStock(
      BuildContext context, String tournamentId, String stockName, int quantity) async {
    try {
      Response tickerDetails;
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
            print(error.response);
            if(error.response?.statusCode == 502){
              throw ApiStatusException();
            } else if(error.response?.statusCode == 400 || error.response?.statusCode == 404 || error.response?.statusCode == 401){
              handler.resolve(error.response!);
            }
            else if(error.response?.statusCode != 200){
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
      final stockData = {
        "ticker" : stockName,
        "quantity" : quantity
      };
      tickerDetails = await dio.post("simulator/order/sell/$tournamentId",data: stockData);
      print(tickerDetails.data);
      return tickerDetails.data;
    } on ApiStatusException {
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(context, apiException.apiStatusMessage());
    } catch (e) {
      print(e.toString());
      messageSnackBar(context, "No Internet");
    }
    return null;
  }
}