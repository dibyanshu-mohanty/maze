import 'package:card_swiper/card_swiper.dart';
import 'package:maze/theme/coreimport.dart';
import 'package:maze/view/screens/onboardingScreen/screenone.dart';
import 'package:maze/view/screens/onboardingScreen/screenthree.dart';
import 'package:maze/view/screens/onboardingScreen/screentwo.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import '../../utils/appscreenbackground.dart';

class IntroductionScreen extends StatelessWidget {
  IntroductionScreen({Key? key}) : super(key: key);

  List<Widget> onBoardScreens = const [
    OnboardScreenOne(),
    OnboardScreenTwo(),
    OnboardScreenThree(),
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
    return Scaffold(
      body: OnBoardingSlider(
        totalPage: 3,
        pageBodies: onBoardScreens,
        speed: 1.8,
        // ignore: prefer_const_literals_to_create_immutables
        background: [
          const AppScreenBackground(),
          const AppScreenBackground(),
          const AppScreenBackground(),
        ],
        headerBackgroundColor: AppColors.colorTransparent,
        hasFloatingButton: false,
        hasSkip: true,
        skipTextButton: Text('Skip'),
        // trailing: Text('Next'),
      ),
    );
  }
}
