

import 'package:flutter/material.dart';
import 'package:maze/model/learning/model/learningmodulemodel.dart';
import 'package:maze/model/learning/service/learningmodule.dart';
import 'package:maze/view/utils/staticUiThemes/errors.dart';

import '../../../view/utils/uithemes/snackbarmessages.dart';

class ModuleProvider with ChangeNotifier{
  List<LearningModuleModel> _modules = [];
  List<LearningModuleModel> get modules{
    return [..._modules];
  }

  Future<void> getAllModules(BuildContext context) async{
    try{
      Map<String, dynamic>? moduleDetails = await LearningModule().getAllModuleDetails(context);
      if(moduleDetails != null){
        List<dynamic> moduleResult = moduleDetails["modules"];
        _modules = moduleResult.map((e) => LearningModuleModel.fromJson(e)).toList();
        print(_modules);
        notifyListeners();
      } else {
        //throw LocalDBException();
      }
    } on LocalDBException {
      LocalDBException ldbException = LocalDBException();
      messageSnackBar(context, ldbException.ldbStatusMessage());
    }
  }
}