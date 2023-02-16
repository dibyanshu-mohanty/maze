import 'dart:convert';

// import 'package:flutter/cupertino.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../theme/coreimport.dart';
import '../../../view/utils/staticUiThemes/errors.dart';
import '../../../view/utils/uithemes/snackbarmessages.dart';
import '../../constants/networkoptions.dart';
import 'package:http/http.dart' as http;

class TournamentApiCalls {
  Future<Map<String, dynamic>?> getId(BuildContext context) async {
    try {
      final refs = await SharedPreferences.getInstance();
      final jwt = refs.getString("jwt");
      if (jwt == null) {
        throw NullAuthException();
      } else {
        final response = await http.get(
          Uri.parse("$mainServer/simulator/tournament/all-tournaments"),
          headers: authorisedHeaders(jwt),
          // body: sendOtpObject,
        );

        if (response.statusCode == 200) {
          print(jsonDecode(response.body));
          return jsonDecode(response.body);
        } else {
          throw ApiStatusException();
        }
      }
    } on ApiStatusException {
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(context, apiException.apiStatusMessage());
    } catch (e) {
      messageSnackBar(context, "No Internet");
    }
    return null;
  }

  Future<Map<String, dynamic>?> fetchPortfolioData(BuildContext context) async {
    try {
      final response = await http.get(
        Uri.parse("http://demo7588460.mockable.io/portfolio"), // mockable url
      );
      if (response.statusCode == 200) {
        print(jsonDecode(response.body));
        return jsonDecode(response.body);
      } else {
        throw ApiStatusException();
      }
    } on ApiStatusException {
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(context, apiException.apiStatusMessage());
    } catch (e) {
      messageSnackBar(context, "No Internet");
    }
    return null;
  }

  Future<Map<String, dynamic>?> availableTickersData(
      BuildContext context) async {
    try {
      final response = await http.get(
        Uri.parse(
            "http://demo7588460.mockable.io/marketStocks"), // mockable url
      );
      if (response.statusCode == 200) {
        print(jsonDecode(response.body));
        return jsonDecode(response.body);
      } else {
        throw ApiStatusException();
      }
    } on ApiStatusException {
      ApiStatusException apiException = ApiStatusException();
      messageSnackBar(context, apiException.apiStatusMessage());
    } catch (e) {
      messageSnackBar(context, "No Internet");
    }
    return null;
  }
}
