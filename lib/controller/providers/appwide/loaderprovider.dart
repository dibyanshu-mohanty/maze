
import '../../../theme/coreimport.dart';

class LoaderProvider with ChangeNotifier{
  bool _isLoading = false;

  bool get isLoading{
    return _isLoading;
  }

  void toggleLoading(bool isLoad){
    _isLoading = isLoad;
    notifyListeners();
  }
}