import 'dart:io';

import 'package:dio/dio.dart';
import 'package:maze/view/utils/staticUiThemes/staticuielements.dart';
import '../../../theme/coreimport.dart';
import '../../../view/utils/staticUiThemes/errors.dart';
import '../../../view/utils/uithemes/snackbarmessages.dart';
import '../../constants/appwideexecutions.dart';
import '../../constants/networkoptions.dart';

class Portfolio{
  Future<Map<String, dynamic>?> fetchPortfolioData(BuildContext context, String tournamentId) async {
    Response portfolioData;
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
        },
            onError: (error, ErrorInterceptorHandler handler) async{
            if(error.response?.statusCode == 404){
                handler.resolve(error.response!);
            } else if(error.response?.statusCode ==404 || error.response?.statusCode == 400){
                handler.resolve(error.response!);
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
          },
        ),
      ],
    );
    try {
      portfolioData = await dio.get("simulator/tournament/$tournamentId/profile");
      return portfolioData.data;
    } on ApiStatusException {
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(context, apiException.apiStatusMessage());
    } on DioError catch (e) {
      //print(e.toString());
    }
    return null;
  }
}