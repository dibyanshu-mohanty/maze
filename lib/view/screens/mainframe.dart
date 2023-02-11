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
import 'homeScreen/homescreen.dart';

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
        icon: const Iconify(Teenyicons.home_outline,color: AppColors.colorGolden,),
        activeColorPrimary: AppColors.colorGolden,
        inactiveColorPrimary: AppColors.colorWhite,
        inactiveIcon: const Iconify(Teenyicons.home_outline,color: AppColors.colorWhite,),
      ),
      PersistentBottomNavBarItem(
        icon: const Iconify(FluentEmojiHighContrast.graduation_cap,color: AppColors.colorGolden),
        inactiveIcon: const Iconify(FluentEmojiHighContrast.graduation_cap,color: AppColors.colorWhite),
        activeColorPrimary: AppColors.colorGolden,
        inactiveColorPrimary: AppColors.colorWhite,
      ),
      PersistentBottomNavBarItem(
        icon: const Iconify(Gg.arrows_exchange_alt,color: AppColors.colorBlack),
        activeColorPrimary: AppColors.colorGolden,
        inactiveColorPrimary: AppColors.colorWhite,
      ),
      PersistentBottomNavBarItem(
        icon: const Iconify(Bx.store_alt,color: AppColors.colorGolden),
        inactiveIcon: const Iconify(Bx.store_alt,color: AppColors.colorWhite),
        activeColorPrimary: AppColors.colorGolden,
        inactiveColorPrimary: AppColors.colorWhite,
      ),
      PersistentBottomNavBarItem(
        icon: const Iconify(IconParkOutline.game_handle,color: AppColors.colorGolden),
        inactiveIcon: const Iconify(IconParkOutline.game_handle,color: AppColors.colorWhite),
        activeColorPrimary: AppColors.colorGolden,
        inactiveColorPrimary: AppColors.colorWhite,
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
