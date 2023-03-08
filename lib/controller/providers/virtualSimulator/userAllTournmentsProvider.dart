import 'package:flutter/cupertino.dart';
import 'package:maze/model/virtualSimulatorModels/model/tournamentdetailmodel.dart';
import '../../../model/virtualSimulatorModels/model/tournamentModel.dart';
import '../../../model/virtualSimulatorModels/service/tournaments.dart';
import '../../../view/utils/staticUiThemes/errors.dart';
import '../../../view/utils/uithemes/snackbarmessages.dart';

class TournamentProvider with ChangeNotifier {
  List<NewTournament> _tournament = [];
  List<NewTournament> _openTournaments = [];
  List<NewTournament> _runningTournament = [];
  bool _isEnrolled = false;

  List<NewTournament> get listTournaments {
    return _tournament;
  }

  List<NewTournament> get openTournaments {
    return _openTournaments;
  }
  List<NewTournament> get runningTournaments {
    return _runningTournament;
  }

  TournamentDetailModel? _tournamentData;
  TournamentDetailModel get tournamentData{
    return _tournamentData!;
  }

  bool get isEnrolled{
    return _isEnrolled;
  }

  Future<void> tournamentId(BuildContext context) async {
    try {
      Map<String, dynamic>? tournamentRequestDetails =
      await Tournament().getTournamentId(context);
      if (tournamentRequestDetails != null) {
        List<dynamic> tournamentResult =
        tournamentRequestDetails["tournaments"];
        _tournament =
            tournamentResult.map((e) => NewTournament.fromJson(e)).toList();
        _openTournaments = _tournament.where((element) => element.status == "REGISTRATION_OPEN").toList();
        _runningTournament = _tournament.where((element) => element.status == "RUNNING").toList();
        notifyListeners();
      }  else {
        throw LocalDBException();
      }
    } on LocalDBException {
      LocalDBException naException = LocalDBException();
      messageSnackBar(context, naException.ldbStatusMessage());
    }
  }

  Future<void> getTournamentDetails(BuildContext context,String tournamentId) async {
    try {
        Map<String, dynamic>? tournamentDetails =
        await Tournament().getTournamentDetails(context,tournamentId);
        if (tournamentDetails != null) {
            _tournamentData = TournamentDetailModel.fromJson(tournamentDetails);
          notifyListeners();
        } else {
          _tournamentData = TournamentDetailModel();
          notifyListeners();
      }
    } on LocalDBException {
      LocalDBException naException = LocalDBException();
      messageSnackBar(context, naException.ldbStatusMessage());
    }
  }
}
