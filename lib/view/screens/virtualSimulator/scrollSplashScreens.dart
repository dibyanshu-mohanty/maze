import 'package:maze/theme/coreimport.dart';

import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:maze/view/screens/virtualSimulator/splashScreenOne.dart';
import 'package:maze/view/screens/virtualSimulator/splashScreenThree.dart';
import 'package:maze/view/screens/virtualSimulator/splashScreenTwo.dart';
import 'package:maze/view/screens/virtualSimulator/vsAppScreenBackground.dart';

// import '../../utils/appscreenbackground.dart';
import 'splashScreenBackground.dart';

class ScrollSplashScreens extends StatelessWidget {
  ScrollSplashScreens({Key? key}) : super(key: key);

  List<Widget> onBoardScreens = const [
    SplashScreenOne(),
    SplashScreenTwo(),
    SplashScreenThree(),
  ];

  // late PageController _dotsController;

  // @override
  // void initState() {
  //   super.initState();
  //   _dotsController = PageController();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   _dotsController.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      totalPage: 3,
      pageBodies: onBoardScreens,
      speed: 1.8,
      // ignore: prefer_const_literals_to_create_immutables
      background: [
        VsAppScreenBackground(),
        VsAppScreenBackground(),
        VsAppScreenBackground(),
      ],
      headerBackgroundColor: AppColors.colorTransparent,
      hasFloatingButton: false,
      hasSkip: true,
      skipTextButton: Text('Skip'),
      // trailing: Text('Next'),
    );
  }
}
