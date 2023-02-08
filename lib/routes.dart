// // import 'dart:js';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:maze/view/screens/errorScreen/errorscreen.dart';
// import 'package:maze/view/screens/goldScreen/digitalgoldscreen.dart';
// import 'package:maze/view/screens/profile/profilescreen.dart';
// import 'view/screens/authScreen/categoryselectscreen.dart';
// import 'view/screens/authScreen/createprofilescreen.dart';
// import 'view/screens/authScreen/enterphonescreen.dart';
// import 'view/screens/homeScreen/homescreen.dart';
// import 'view/screens/learningScreen/learningContent/learningcontentscreen.dart';
// import 'view/screens/learningScreen/learninglevelscreen.dart';
// import 'view/screens/learningScreen/readingtaskscreen.dart';
// import 'view/screens/learningScreen/tasklevelscreen.dart';
// import 'view/screens/learningScreen/videoscreen.dart';
// import 'view/screens/mainframe.dart';
// import 'view/screens/onboardingScreen/introductiondetailscreen.dart';
// import 'view/screens/onboardingScreen/onboardingscreen.dart';
// import 'view/screens/splashScreen/splashscreen.dart';
// import 'view/widgets/authScreen/otpfields.dart';
//
// class MyRoutes {
//
//   static const String splashScreen = "/";
//   static const String onboardingScreen = "/onboardingScreen";
//   static const String introductionDetailsScreen = '/introductionScreen';
//   static const String categorySelect = '/categorySelect';
//   static const String enterPhonenumber = '/enterPhoneNumber';
//   static const String otp = '/otp';
//   static const String createProfile = '/createProfile';
//   static const String homePage = '/homePage';
//   static const String learningLevelScreen = '/learningLevelScreen';
//   static const String learningContentScreen = '/learningContentScreen';
//   static const String readingTask = '/readingTaskScreen';
//   static const String taskLevel = '/taskLevelScreen';
//   static const String videoPlayer = '/videoPlayer';
//   static const String mainFrame = '/mainFrame';
//   static const String rewardScreen = '/rewardScreen';
//   static const String referScreen = '/referScreen';
//   static const String errorScreen = '/errorScreen';
//   static const String digitalGoldScreen = "/digitalGoldScreen";
//   static const String profileScreen = "/profileScreen";
//
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//       return CupertinoPageRoute<dynamic>(
//           settings: settings,
//           builder: (BuildContext context) {
//         switch (settings.name) {
//           case splashScreen:
//             return const SplashScreen();
//           case errorScreen:
//             return const ErrorScreen();
//           case onboardingScreen:
//             return const OnboardingScreen();
//           case introductionDetailsScreen:
//             return IntroductionDetailsScreen();
//           case categorySelect:
//             return const CategorySelectScreen();
//           case enterPhonenumber:
//             return const EnterPhoneNumber();
//           case otp:
//             return OTPField(otpController: TextEditingController(),);
//           case createProfile:
//             return CreateProfileScreen();
//           case homePage:
//             return const HomeScreen();
//           case learningLevelScreen:
//             return const LearningLevelScreen();
//           case learningContentScreen:
//             return const LearningContentScreen();
//           case readingTask:
//             return const ReadingTaskScreen();
//           case taskLevel:
//             return const TaskLevelScreen();
//           case videoPlayer:
//             return const VideoPlayerScreen();
//           case mainFrame:
//             return const MainFrame();
//           case digitalGoldScreen:
//             return const DigitalGoldScreen();
//           case profileScreen:
//             return const ProfileScreen();
//           default:
//             return SplashScreen();
//         }
//       });
//   }
// }
