import 'package:maze/theme/coreimport.dart';

class QuizProvider with ChangeNotifier {
  double _percent = 0.0;
  double get percent {
    return _percent;
  }

  void calculatePercent(int currentValue, int totalValue) {
    _percent = (double.parse(currentValue.toString()) -
        double.parse(totalValue.toString())).abs() /
        double.parse(totalValue.toString());
    notifyListeners();
  }
}