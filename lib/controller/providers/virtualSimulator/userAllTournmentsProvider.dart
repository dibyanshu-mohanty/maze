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
        for (int i = 0;
            i < tournamentRequestDetails["tournaments"].length;
            i++) {
          _tournament.add(
            NewTournament(
                id: tournamentRequestDetails["tournaments"][i]["id"],
                name: tournamentRequestDetails["tournaments"][i]["name"],
                registration_start_date: tournamentRequestDetails["tournaments"]
                    [i]["registration_start_date"],
                registration_end_date: tournamentRequestDetails["tournaments"]
                    [i]["registration_end_date"],
                start_date: tournamentRequestDetails["tournaments"][i]
                    ["start_date"],
                end_date: tournamentRequestDetails["tournaments"][i]
                    ["end_date"],
                status: tournamentRequestDetails["tournaments"][i]["status"],
                first_prize: tournamentRequestDetails["tournaments"][i]
                    ["first_prize"],
                second_prize: tournamentRequestDetails["tournaments"][i]
                    ["second_prize"],
                third_prize: tournamentRequestDetails["tournaments"][i]
                    ["third_prize"],
                image: tournamentRequestDetails["tournaments"][i]["image"]),
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
