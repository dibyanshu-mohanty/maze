import 'package:flutter/cupertino.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';
import 'package:iconify_flutter/icons/gg.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/icon_park_outline.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/screens/goldScreen/digitalgoldscreen.dart';
import 'package:maze/view/screens/learningScreen/learninglevelscreen.dart';
import 'package:maze/view/screens/profile/profilescreen.dart';
import 'package:maze/view/screens/rewards/refer.dart';
import 'package:maze/view/screens/rewards/reward_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:iconify_flutter/icons/fluent_emoji_high_contrast.dart';
import '../../constants/constRouteNames.dart';
import '../widgets/authScreen/otpfields.dart';
import 'authScreen/categoryselectscreen.dart';
import 'authScreen/createprofilescreen.dart';
import 'authScreen/enterphonescreen.dart';
import 'errorScreen/errorscreen.dart';
import 'homeScreen/homescreen.dart';
import 'learningScreen/learningContent/learningcontentscreen.dart';
import 'learningScreen/readingtaskscreen.dart';
import 'learningScreen/tasklevelscreen.dart';
import 'learningScreen/videoscreen.dart';
import 'onboardingScreen/introductiondetailscreen.dart';
import 'onboardingScreen/onboardingscreen.dart';
import 'splashScreen/splashscreen.dart';

class MainFrame extends StatelessWidget {
  const MainFrame({Key? key}) : super(key: key);

  List<Widget> _mainScreens() {
    return const [
      HomeScreen(),
      LearningLevelScreen(),
      HomeScreen(),
      ProfileScreen(),
      DigitalGoldScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Iconify(
          Teenyicons.home_outline,
          color: AppColors.colorGolden,
        ),
        activeColorPrimary: AppColors.colorGolden,
        inactiveColorPrimary: AppColors.colorWhite,
        inactiveIcon: const Iconify(
          Teenyicons.home_outline,
          color: AppColors.colorWhite,
        ),
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          onGenerateRoute: routeconst,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Iconify(FluentEmojiHighContrast.graduation_cap,
            color: AppColors.colorGolden),
        inactiveIcon: const Iconify(FluentEmojiHighContrast.graduation_cap,
            color: AppColors.colorWhite),
        activeColorPrimary: AppColors.colorGolden,
        inactiveColorPrimary: AppColors.colorWhite,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          onGenerateRoute: routeconst,
        ),
      ),
      PersistentBottomNavBarItem(
        icon:
            const Iconify(Gg.arrows_exchange_alt, color: AppColors.colorBlack),
        activeColorPrimary: AppColors.colorGolden,
        inactiveColorPrimary: AppColors.colorWhite,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          onGenerateRoute: routeconst,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Iconify(Bx.store_alt, color: AppColors.colorGolden),
        inactiveIcon: const Iconify(Bx.store_alt, color: AppColors.colorWhite),
        activeColorPrimary: AppColors.colorGolden,
        inactiveColorPrimary: AppColors.colorWhite,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          onGenerateRoute: routeconst,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: const Iconify(IconParkOutline.game_handle,
            color: AppColors.colorGolden),
        inactiveIcon: const Iconify(IconParkOutline.game_handle,
            color: AppColors.colorWhite),
        activeColorPrimary: AppColors.colorGolden,
        inactiveColorPrimary: AppColors.colorWhite,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          onGenerateRoute: routeconst,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _mainScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: AppColors.colorGrey2,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}

var routeconst = (RouteSettings settings) {
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
          case '/introductionScreen':
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
            return const LearningLevelScreen();
          case learningContentScreen:
            return const LearningContentScreen();
          case readingTask:
            return const ReadingTaskScreen();
          case taskLevel:
            return const TaskLevelScreen();
          case videoPlayer:
            return const VideoPlayerScreen();
          case mainFrame:
            return const MainFrame();
          case digitalGoldScreen:
            return const DigitalGoldScreen();
          case profileScreen:
            return const ProfileScreen();
          default:
            return SplashScreen();
        }
      });
};
