import 'package:maze/model/virtualSimulatorModels/model/graphmodel.dart';

import '../../../model/virtualSimulatorModels/model/availabletickermodel.dart';
import '../../../model/virtualSimulatorModels/model/tickerdetailmodel.dart';
import '../../../model/virtualSimulatorModels/service/ticker.dart';
import '../../../theme/coreimport.dart';
import '../../../view/utils/staticUiThemes/errors.dart';
import '../../../view/utils/uithemes/snackbarmessages.dart';

class TickerDataProvider with ChangeNotifier {
  List<AvailableTickersModel> _availableTickers = [];

  List<AvailableTickersModel> get availableTickers {
    return _availableTickers;
  }

  List<GraphModel> _graphData = [];

  TickerDetailModel _tickerDetails = TickerDetailModel(graphData: []);
  TickerDetailModel get tickerDetails {
    return _tickerDetails;
  }

  Future<void> availableTickersData(BuildContext context) async {
    try {
      Map<String, dynamic>? availableTickersDetails =
          await Tickers().availableTickersData(context);
      if (availableTickersDetails != null) {
        List<dynamic> availableStockData = availableTickersDetails["tickers"];
        _availableTickers = availableStockData
            .map((e) => AvailableTickersModel.fromJson(e))
            .toList();
        notifyListeners();
      } else {
        throw LocalDBException();
      }
    } on LocalDBException {
      LocalDBException naException = LocalDBException();
      messageSnackBar(context, naException.ldbStatusMessage());
    }
  }

  Future<void> getTickerDetails(
      BuildContext context, String tickerSymbol) async {
    try {
      Map<String, dynamic>? specificTickerDetails =
          await Tickers().tickerDetails(context, tickerSymbol);
      if (specificTickerDetails != null) {
        final tickerResponse = specificTickerDetails["ticker"];
        Map<String, dynamic> graphResponse = tickerResponse["eod_data"];
        _graphData = [];
        graphResponse.forEach((key, value) {
          _graphData.add(GraphModel.fromJson(value));
        });
        _tickerDetails = TickerDetailModel(
            graphData: _graphData,
            name: tickerResponse["name"],
            ticker: tickerResponse["ticker"],
            price: tickerResponse["price"]);
        notifyListeners();
      } else {
        throw LocalDBException();
      }
    } on LocalDBException {
      LocalDBException naException = LocalDBException();
      messageSnackBar(context, naException.ldbStatusMessage());
    }
  }
}
