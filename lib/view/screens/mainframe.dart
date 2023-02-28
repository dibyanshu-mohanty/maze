import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/dashicons.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';
import 'package:iconify_flutter/icons/gg.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/screens/goldScreen/digitalgoldscreen.dart';
import 'package:maze/view/screens/learningScreen/learninglevelscreen.dart';
import 'package:maze/view/screens/profile/profilescreen.dart';
import 'package:iconify_flutter/icons/fluent_emoji_high_contrast.dart';
import 'package:maze/view/screens/rewards/reward_page.dart';
import '../../routes.dart';
import 'homeScreen/homescreen.dart';
import 'learningScreen/learningContent/learningcontentscreen.dart';
import 'learningScreen/readingtaskscreen.dart';
import 'learningScreen/tasklevelscreen.dart';
import 'learningScreen/videoscreen.dart';
import 'onboardingScreen/introductiondetailscreen.dart';
import 'onboardingScreen/onboardingscreen.dart';
import 'splashScreen/splashscreen.dart';
import 'virtualSimulator/vsScrollSplashScreens.dart';

class MainFrame extends StatefulWidget {
  MainFrame({Key? key}) : super(key: key);

  @override
  State<MainFrame> createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {
  final List<Widget> _mainScreens = [
    const HomeScreen(),
    LearningLevelScreen(),
    HomeScreen(),
    RewardPage(),
    // DigitalGoldScreen(),
    VsSplashScreens(),
  ];

  int selectedIndex = 0;

  List<Widget> _navBarItems() {
    return [
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 0;
            });
          },
          child: Iconify(
            Teenyicons.home_outline,
            size: Dimens.margin25,
            color: selectedIndex == 0
                ? AppColors.colorGolden
                : AppColors.colorWhite,
          ),
        ),
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 1;
            });
          },
          child: Iconify(FluentEmojiHighContrast.graduation_cap,
              size: Dimens.margin25,
              color: selectedIndex == 1
                  ? AppColors.colorGolden
                  : AppColors.colorWhite),
        ),
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 2;
            });
          },
          child: Container(
              width: 10.w,
              height: 10.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.colorGolden,
              ),
              alignment: Alignment.center,
              child: const Iconify(Gg.arrows_exchange_alt,
                  size: Dimens.margin25, color: AppColors.colorBlack)),
        ),
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 3;
            });
          },
          child: Iconify(Bx.store_alt,
              size: Dimens.margin25,
              color: selectedIndex == 3
                  ? AppColors.colorGolden
                  : AppColors.colorWhite),
        ),
      ),
      Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = 4;
            });
          },
          child: Iconify(Dashicons.games,
              size: Dimens.margin25,
              color: selectedIndex == 4
                  ? AppColors.colorGolden
                  : AppColors.colorWhite),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _mainScreens[selectedIndex],
        bottomNavigationBar: Container(
          color: AppColors.colorGrey2,
          padding: const EdgeInsets.symmetric(vertical: Dimens.margin15),
          child: Row(
            children: _navBarItems(),
          ),
        ));
  }
}

// var routeconst = (RouteSettings settings) {
//   return CupertinoPageRoute<dynamic>(
//       settings: settings,
//       builder: (BuildContext context) {
//         switch (settings.name) {
//           case splashScreen:
//             return const SplashScreen();
//           case errorScreen:
//             return const ErrorScreen();
//           case onboardingScreen:
//             return const OnboardingScreen();
//           case '/introductionScreen':
//             return IntroductionDetailsScreen();
//           case categorySelect:
//             return const CategorySelectScreen();
//           case enterPhonenumber:
//             return const EnterPhoneNumber();
//           case otp:
//             return OTPField(
//               otpController: TextEditingController(),
//             );
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
// };
