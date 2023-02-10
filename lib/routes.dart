// import 'dart:js';
import 'package:flutter/material.dart';
// import 'package:maze/theme/coreimport.dart';

import 'constants/constRouteNames.dart';
import 'view/screens/authScreen/categoryselectscreen.dart';
import 'view/screens/authScreen/createprofilescreen.dart';
import 'view/screens/authScreen/enterphonescreen.dart';
import 'view/screens/homeScreen/homescreen.dart';
import 'view/screens/learningScreen/learningContent/learningcontentscreen.dart';
import 'view/screens/learningScreen/learninglevelscreen.dart';
import 'view/screens/learningScreen/readingtaskscreen.dart';
import 'view/screens/learningScreen/tasklevelscreen.dart';
import 'view/screens/learningScreen/videoscreen.dart';
import 'view/screens/mainframe.dart';
import 'view/screens/onboardingScreen/introductiondetailscreen.dart';
import 'view/screens/onboardingScreen/onboardingscreen.dart';
import 'view/screens/virtualSimulator/virtualSimulatorScreen.dart';
import 'view/screens/virtualSimulator/vsMarketScreen.dart';
import 'view/screens/virtualSimulator/vshistoryScreen.dart';
import 'view/widgets/authScreen/otpfields.dart';

class MyRoutes {
  static Route<dynamic> genrateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onbardingScreen:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case introductionScreen:
        return MaterialPageRoute(builder: (context) => IntroductionScreen());
      case categorySelect:
        return MaterialPageRoute(builder: (context) => CategorySelectScreen());
      case enterPhonenumber:
        return MaterialPageRoute(builder: (context) => EnterPhoneNumber());
      case otp:
        return MaterialPageRoute(builder: (context) => OTPField());
      case createProfile:
        return MaterialPageRoute(builder: (context) => CreateProfileScreen());
      case homePage:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case learningLevelScreen:
        return MaterialPageRoute(builder: (context) => LearningLevelScreen());
      case learningContentScreen:
        return MaterialPageRoute(builder: (context) => LearningContentScreen());
      case readingTask:
        return MaterialPageRoute(builder: (context) => ReadingTaskScreen());
      case taskLevel:
        return MaterialPageRoute(builder: (context) => TaskLevelScreen());
      case videoPlayer:
        return MaterialPageRoute(builder: (context) => VideoPlayerScreen());
      case mainFrame:
        return MaterialPageRoute(builder: (context) => MainFrame());
      case historyScreen:
        return MaterialPageRoute(builder: (context) => HistoryScreen());
      case virtualSimulatorScreen:
        return MaterialPageRoute(
            builder: (context) => VirtualSimulatorScreen());
      case vsMarketScreen:
        return MaterialPageRoute(builder: (context) => VsMarketScreen());
      default:
    }

    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text("Random Route"),
      ),
    );
  }
}
