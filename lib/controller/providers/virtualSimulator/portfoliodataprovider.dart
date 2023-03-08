

import 'package:flutter/cupertino.dart';
import 'package:maze/model/virtualSimulatorModels/model/holdingstickermodel.dart';

import '../../../model/virtualSimulatorModels/model/portfoliomodel.dart';
import '../../../model/virtualSimulatorModels/service/portfolio.dart';
import '../../../model/virtualSimulatorModels/service/tournaments.dart';
import '../../../view/utils/staticUiThemes/errors.dart';
import '../../../view/utils/uithemes/snackbarmessages.dart';

class PortfolioProvider with ChangeNotifier{
  PortfolioData _portfolioData = PortfolioData();

  PortfolioData get portfolioData {
    return _portfolioData;
  }

  List<HoldingsTickerModel> _holdings = [];

  List<HoldingsTickerModel> get holdings{
    return [..._holdings];
  }

  double calculateTotalInvestedAmount () {
    double investedAmount = 0;
    if(_holdings.isNotEmpty){
      for (var holdings in _holdings) {
        investedAmount += holdings.stock_value;
      }
    }
    return investedAmount;
  }

  Future<void> getPortfolioData(BuildContext context,String tournamentId) async {
    try {
      Map<String, dynamic>? portfolioDetails =
      await Portfolio().fetchPortfolioData(context,tournamentId);
      if (portfolioDetails != null || portfolioDetails!["status"] != "error") {
        Map<String,dynamic> holdingResponse = portfolioDetails["available"];
        _holdings = [];
        if(holdingResponse.isNotEmpty){
          holdingResponse.forEach((key, value) {
            _holdings.add(HoldingsTickerModel.fromJson(value));
          });
        }
        double investedAmount = calculateTotalInvestedAmount();
        _portfolioData = PortfolioData.fromJson(portfolioDetails);
        notifyListeners();
      }  else {
        _portfolioData = PortfolioData(
          balance: 0.0,
          profit: 0.0,
          invested: 0.0,
        );
      }
    } on LocalDBException {
      LocalDBException naException = LocalDBException();
      messageSnackBar(context, naException.ldbStatusMessage());
    }
  }
}