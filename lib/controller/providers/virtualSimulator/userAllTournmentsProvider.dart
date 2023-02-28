import 'package:flutter/cupertino.dart';

import '../../../model/virtualSimulatorModels/model/availableTickers.dart';
import '../../../model/virtualSimulatorModels/model/portfolio.dart';
import '../../../model/virtualSimulatorModels/model/tournamentModel.dart';
import '../../../model/virtualSimulatorModels/service/vsTournaments.dart';
import '../../../view/utils/staticUiThemes/errors.dart';
import '../../../view/utils/uithemes/snackbarmessages.dart';

class TournamentProvider with ChangeNotifier {
  late List<NewTournament> _tournament = [];
  late List<AvailableTickers> _availableTickers = [];
  PortfolioData _portfolioData = PortfolioData();
  // NewUser _signupUser = NewUser();
  List<AvailableTickers> get listAvailableTickers {
    return _availableTickers;
  }

  List<NewTournament> get listTournaments {
    return _tournament;
  }

  PortfolioData get portFolio {
    return _portfolioData;
  }

  // String _jwt = "";
  // String get jwt{
  //   return _jwt;
  // }

  // SignedUser _loginUser = SignedUser(message: "", details: "", token: "", refreshToken: "");
  // SignedUser get loginUser {
  //   return _loginUser;
  // }

  Future<void> tournamentId(BuildContext context) async {
    try {
      Map<String, dynamic>? tournamentRequestDetails =
          await TournamentApiCalls().getId(context);
      if (tournamentRequestDetails != null) {
        List<dynamic> tournamentResult =
            tournamentRequestDetails["tournaments"];
        _tournament =
            tournamentResult.map((e) => NewTournament.fromJson(e)).toList();
        print(_tournament);

        notifyListeners();
      } else {
        throw NullAuthException();
      }
    } on NullAuthException {
      NullAuthException naException = NullAuthException();
      messageSnackBar(context, naException.nullAuthMessage());
    }
  }

  Future<void> portfolioData(BuildContext context) async {
    try {
      Map<String, dynamic>? tournamentRequestDetails =
          await TournamentApiCalls().fetchPortfolioData(context);
      if (tournamentRequestDetails != null) {
        _portfolioData = PortfolioData(
            current_value: tournamentRequestDetails["current_value"],
            invested_amount: tournamentRequestDetails["invested_amount"],
            total_returns: tournamentRequestDetails["total_returns"]);

        notifyListeners();
      } else {
        throw NullAuthException();
      }
    } on NullAuthException {
      NullAuthException naException = NullAuthException();
      messageSnackBar(context, naException.nullAuthMessage());
    }
  }

  Future<void> availableTickersData(BuildContext context) async {
    try {
      Map<String, dynamic>? availableTickersDetails =
          await TournamentApiCalls().availableTickersData(context);
      if (availableTickersDetails != null) {
        for (int i = 0;
            i < availableTickersDetails["details"]["symbols"].length;
            i++) {
          _availableTickers.add(
            AvailableTickers(
                symbol: availableTickersDetails["details"]["symbols"][i]
                    ["symbol"],
                name: availableTickersDetails["details"]["symbols"][i]["name"],
                icon: availableTickersDetails["details"]["symbols"][i]["icon"],
                current_price: availableTickersDetails["details"]["symbols"][i]
                    ["current_price"],
                profit: availableTickersDetails["details"]["symbols"][i]
                    ["profit"]),
          );
        }

        notifyListeners();
      } else {
        throw NullAuthException();
      }
    } on NullAuthException {
      NullAuthException naException = NullAuthException();
      messageSnackBar(context, naException.nullAuthMessage());
    }
  }
}
