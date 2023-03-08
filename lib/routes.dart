import 'package:maze/view/screens/virtualSimulator/vsParticularStock.dart';
import 'package:maze/view/screens/virtualSimulator/vsTournamentDetailScreen.dart';
import 'package:maze/view/screens/virtualSimulator/vsTournamentscreen.dart';
import 'constants/constRouteNames.dart';
import 'package:flutter/cupertino.dart';
import 'package:maze/view/screens/errorScreen/errorscreen.dart';
import 'package:maze/view/screens/goldScreen/txngoldscreen.dart';
import 'package:maze/view/screens/goldScreen/digitalgoldscreen.dart';
import 'package:maze/view/screens/profile/addparentscreen.dart';
import 'package:maze/view/screens/profile/profilescreen.dart';
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
import 'package:maze/view/screens/splashScreen/splashscreen.dart';

class MyRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return CupertinoPageRoute<dynamic>(
        settings: settings,
        builder: (BuildContext context) {
          switch (settings.name) {
            case splashScreen:
              return const SplashScreen();
            case errorScreen:
              return const ErrorScreen();
            case onboardingScreen:
              return const OnboardingScreen();
            case introductionDetailsScreen:
              return IntroductionDetailsScreen();
            case categorySelect:
              return const CategorySelectScreen();
            case enterPhonenumber:
              return const EnterPhoneNumber();
            case otp:
              return OTPField(
                otpController: TextEditingController(),
              );
            case createProfile:
              return CreateProfileScreen();
            case homePage:
              return const HomeScreen();
            case learningLevelScreen:
              return LearningLevelScreen();
            case learningContentScreen:
              return const LearningContentScreen();
            case readingTask:
              return const ReadingTaskScreen();
            case taskLevel:
              return const TaskLevelScreen();
            case videoPlayer:
              return const VideoPlayerScreen();
            case mainFrame:
              return MainFrame();
            case digitalGoldScreen:
              return const DigitalGoldScreen();
            case transactDigitalGoldScreen:
              return const GoldScreenTransaction();
            case profileScreen:
              return const ProfileScreen();
            case addParentScreen:
              return const AddParentScreen();
            case historyScreen:
              return const HistoryScreen();
            case virtualSimulatorScreen:
              return const VirtualSimulatorScreen();
            case vsStockDetailScreen:
              return VsParticularStock();
            case vsTournamentScreen:
              return const TournamentScreen();
            case vsTournamentDetailScreen:
              return TournamentDetailScreen();
            default:
              return SplashScreen();
          }
        });
  }
}
